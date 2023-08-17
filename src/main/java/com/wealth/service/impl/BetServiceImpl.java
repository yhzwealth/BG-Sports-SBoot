package com.wealth.service.impl;

import com.wealth.entity.Matches;
import com.wealth.entity.User;
import com.wealth.mapper.BetMapper;
import com.wealth.mapper.MatchesMapper;
import com.wealth.mapper.UserMapper;
import com.wealth.po.BetPo;
import com.wealth.service.BetService;
import com.wealth.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @program: StudentManager
 * @author: iamYBG
 * @description:
 * @create: 2021-12-06
 */
@Service
public class BetServiceImpl implements BetService {

    @Autowired
    private BetMapper betMapper;

    @Autowired
    private MatchesMapper matchesMapper;

    @Autowired
    private UserMapper userMapper;

    @Value("${page.betPageNum}")
    private Integer pageNum;

    @Value("${bet.returnRate}")
    private Double p;

    @Value("${bet.principal}")
    private Integer k;

    @Override
    public List<BetVo> getBetInfo(String username, Integer page) {
        List<BetVo> info = betMapper.getBetInfo(username, (page - 1) * pageNum, pageNum);
        info = info.stream().peek(k -> {
            if (k.getState() == 1) {
                k.setWinnerName(k.getPlayer1Score() > k.getPlayer2Score() ? k.getPlayer1name() : k.getPlayer2name());
            }
        }).collect(Collectors.toList());
        return info;
    }

    @Override
    public Integer getBetCount(String username) {
        return betMapper.getBetCount(username);
    }

    @Override
    public Integer countTodayBet(String username) {
        return betMapper.countTodayBet(username);
    }

    @Override
    public RareVo getRare(Long id) {
        MatchRateVo winRate = matchesMapper.getWinRate(id);
        int total = winRate.getPlayer1Coin() + winRate.getPlayer2Coin();
        double play1Rate = 0;
        double play2Rate = 0;
        if (total != 0){
            play1Rate = (double) winRate.getPlayer1Coin() / total;
            play2Rate = (double) winRate.getPlayer2Coin() / total;
        }
        return new RareVo(play1Rate, play2Rate);
    }

    @Override
    public Boolean bet(BetPo bet) {
        synchronized (BetServiceImpl.class) {
            MatchesVo match = matchesMapper.getMatch(bet.getMatchId());
            if (match.getTime().getTime() < System.currentTimeMillis() + 300000) {
                return false;
            }
            User info = userMapper.getInfo(bet.getUsername());
            if (info.getCoins() < bet.getCoins()) {
                return false;
            }

            if (bet.getPlayerNum() == 1){
                matchesMapper.updateById(new Matches()
                        .setId(bet.getMatchId()).setPlayer1Coin(match.getPlayer1Coin() + bet.getCoins()));
            }else if (bet.getPlayerNum() == 2){
                matchesMapper.updateById(new Matches()
                        .setId(bet.getMatchId()).setPlayer2Coin(match.getPlayer2Coin() + bet.getCoins()));
            }
            userMapper.updateCoins(bet.getUsername(),-bet.getCoins());
            betMapper.insertBet(bet);

            return true;
        }
    }
}

package com.wealth.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.wealth.entity.Matches;
import com.wealth.vo.MatchRateVo;
import com.wealth.vo.MatchesVo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MatchesMapper extends BaseMapper<Matches> {
    List<MatchesVo> getUnCompleteMatch(Integer page,Integer number,String type);
    Integer getUnCompleteMatchCount(String type);

    List<MatchesVo> getCompleteMatch(Integer page,Integer number,String type);
    List<MatchesVo> getAllOngoingMatch();
    Integer getCompleteMatchCount(String type);
    MatchRateVo getWinRate(Long id);

    MatchesVo getMatch(Long id);
}

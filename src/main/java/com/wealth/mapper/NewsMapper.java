package com.wealth.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.wealth.entity.News;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NewsMapper extends BaseMapper<News> {
    List<News> getNewsByPage(Integer page, Integer number);
    News getNews(Long id);
    Integer getNewsCount();
    void updateViews(Long id);
}

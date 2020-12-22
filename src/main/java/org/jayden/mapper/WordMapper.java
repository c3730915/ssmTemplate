package org.jayden.mapper;

import org.jayden.domain.Word;

import java.util.List;

public interface WordMapper {
    /**
     * Mapper接口文件
     * @param id
     * @return
     */
    public Word findById(int id); //根据id查找单词
    public List<Word> findByNum(int num); //返回num个单词
    public List<Word> findByEngName(String wordName) ;
}

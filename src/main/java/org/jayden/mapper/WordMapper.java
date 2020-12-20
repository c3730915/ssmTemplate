package org.jayden.mapper;

import org.jayden.domain.Word;

import java.util.List;

public interface WordMapper {
    public Word findById(int id); //根据id查找单词
    public List<Word> findByNum(int num); //返回num个单词
}

package org.jayden.service;

import org.jayden.domain.Word;
import org.jayden.mapper.WordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("wordService")
public class WordServiceImpl implements WordService {

    @Autowired
    private WordMapper mapper;

    @Override
    public Word findById(int id) {
        Word result = mapper.findById(id);
        return result;
    }

    @Override
    public List<Word> findByNum(int num) {
        List<Word> words = mapper.findByNum(num);
        return words;
    }
}

package org.jayden.service;

import org.jayden.domain.Word;

import java.util.List;

public interface WordService {

    public Word findById(int id);
    public List<Word> findByNum(int num);

}

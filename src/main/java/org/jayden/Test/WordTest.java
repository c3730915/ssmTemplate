package org.jayden.Test;

import org.jayden.domain.Word;
import org.jayden.service.WordService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContex.xml"})
public class WordTest {
    /**
     * 用于测试添加单词的类
     */
    @Autowired
    private WordService wordService;
    @Test
    public void getWordByid(){
        Word wordbyId = wordService.findById(3);
        System.out.println(wordbyId);

    }
    @Test
    public void getWords(){
        List<Word> words = wordService.findByNum(3);
        System.out.println(words);
    }
}

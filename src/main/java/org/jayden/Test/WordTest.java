package org.jayden.Test;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.jayden.domain.Account;
import org.jayden.domain.Word;
import org.jayden.mapper.AccountMapper;
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

    @Autowired
    private AccountMapper accountMapper;
    @Test
    public void getWordByid(){
        Word wordbyId = wordService.findById(3);
        System.out.println(wordbyId);

    }
    @Test
    public void getWords(){
        PageHelper.startPage(2,3);
        List<Account> accounts = accountMapper.findAll();
        for (Account account : accounts) {
            System.out.println(account.toString());
        }
        PageInfo<Account> pageInfo = new PageInfo<>(accounts);
        System.out.println("Current page"+pageInfo.getPageNum());
        System.out.println(pageInfo.getPageSize());

    }
    @Test
    public void getByEngname(){
        List<Word> words = wordService.findByEngName("%"+"apple");
        for (Word word : words) {
            System.out.println(word.toString());

        }

    }
    @Test
    public void getByCnname(){
        List<Word> words = wordService.findByCnName("苹果");
        for (Word word : words) {
            System.out.println(word.toString());

        }

    }
}

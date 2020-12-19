package org.jayden.service;

import org.jayden.domain.Account;
import org.jayden.domain.User;
import org.jayden.mapper.AccountMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Service("accountService")
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountMapper mapper;

    @Override
    public void save(Account account) {
        mapper.save(account);

    }

    @Override
    public List<Account> findAll() {
        List<Account> accountList = mapper.findAll();
        return accountList;


    }


    @Override
    public User login(User user) {
        User logUser= mapper.login(user);
        return logUser;
    }
}

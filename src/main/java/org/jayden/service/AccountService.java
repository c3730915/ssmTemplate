package org.jayden.service;

import org.jayden.domain.Account;
import org.jayden.domain.User;

import java.util.List;

public interface AccountService {
    public void save(Account account);
    public List<Account>findAll();
    public User login(User user);

}

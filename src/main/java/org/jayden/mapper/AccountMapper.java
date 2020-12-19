package org.jayden.mapper;

import org.jayden.domain.Account;
import org.jayden.domain.User;

import java.util.List;

public interface AccountMapper {
    public void save(Account account);
    public List<Account> findAll ();
    public User login(User user);
}

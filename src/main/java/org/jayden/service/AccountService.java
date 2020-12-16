package org.jayden.service;

import org.jayden.domain.Account;

import java.util.List;

public interface AccountService {
    public void save(Account account);
    public List<Account>findAll();

}

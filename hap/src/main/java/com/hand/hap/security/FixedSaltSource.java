package com.hand.hap.security;

import org.springframework.security.authentication.dao.SaltSource;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * @author shengyang.zhou@hand-china.com
 */
public class FixedSaltSource implements SaltSource {
    private String salt;

    @Override
    public Object getSalt(UserDetails user) {
        return salt;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }
}

package Carsharing.domain;

import org.springframework.security.core.GrantedAuthority;

public enum  Role  implements GrantedAuthority {
    Guest,
    User,
    Manager;

    @Override
    public String getAuthority() {
        return name();
    }
}

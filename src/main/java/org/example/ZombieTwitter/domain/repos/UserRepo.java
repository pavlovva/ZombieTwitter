package org.example.ZombieTwitter.domain.repos;

import org.example.ZombieTwitter.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}

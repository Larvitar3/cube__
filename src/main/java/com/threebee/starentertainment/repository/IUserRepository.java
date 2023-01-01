package com.threebee.starentertainment.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.threebee.starentertainment.entity.UserEntity;

public interface IUserRepository extends JpaRepository<UserEntity, Integer> {

	@Query(value = "SELECT * FROM USERS WHERE username = ?1 AND password = ?2", nativeQuery = true)
	UserEntity findByUsernameAndPassword(String username, String password);

	@Query(value = " SELECT * "
			+ " FROM users "
			+ " where username = ?1 "
			, nativeQuery = true)
	Optional<UserEntity> findbyUsername(String username);
	
}

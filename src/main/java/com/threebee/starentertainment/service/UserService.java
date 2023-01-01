package com.threebee.starentertainment.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.threebee.starentertainment.entity.UserEntity;
import com.threebee.starentertainment.model.UserRole;
import com.threebee.starentertainment.repository.IUserRepository;

@Service
public class UserService {

	
	@Autowired
	private BCryptPasswordEncoder encoder;
		
		
	@Transactional
	public int saveUser(UserEntity user) {
		try {
			String rawPassword = user.getPassword();
			String encPassword = encoder.encode(rawPassword);
			user.setPassword(encPassword);
			user.setRole(UserRole.USER);
			userRepository.save(user);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return -1;
	}
	
	@Autowired
	private IUserRepository userRepository;
	
	public UserEntity login(UserEntity user) {
		
		UserEntity userEntity = userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		
		return userEntity;
	}
	
	
	
	
}

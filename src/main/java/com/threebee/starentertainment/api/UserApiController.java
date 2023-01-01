package com.threebee.starentertainment.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.threebee.starentertainment.dto.ResponseDto;
import com.threebee.starentertainment.entity.UserEntity;
import com.threebee.starentertainment.service.UserService;

@RestController
public class UserApiController {

	@Autowired
	UserService userService;     
	
	@PostMapping("/auth/joinProc")
	public ResponseDto<Integer> save(@RequestBody UserEntity user) {
		userService.saveUser(user);
		return new ResponseDto<Integer>(HttpStatus.OK, 1);
	}    
	
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	
	
	
}

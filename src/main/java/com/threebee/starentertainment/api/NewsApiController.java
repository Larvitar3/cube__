package com.threebee.starentertainment.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.threebee.starentertainment.dto.ResponseDto;
import com.threebee.starentertainment.entity.NewsEntity;
import com.threebee.starentertainment.service.NewsService;



@RestController
public class NewsApiController {

	@Autowired
	NewsService newsService;
	
	@PostMapping("/api/news")
	public ResponseDto<Integer> fetchSave(@RequestBody NewsEntity notice
			) {
		
		System.out.println(notice);
		newsService.writeNews(notice, 1);
		return new ResponseDto<Integer>(HttpStatus.OK, 1);
	}
	
}

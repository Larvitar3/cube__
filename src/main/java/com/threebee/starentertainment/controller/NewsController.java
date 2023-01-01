package com.threebee.starentertainment.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.threebee.starentertainment.entity.NewsEntity;
import com.threebee.starentertainment.service.NewsService;

@Controller
public class NewsController {

	@Autowired
	private NewsService newsService;
	
	@GetMapping("/news")
	public String fetchNews(Model model, @PageableDefault(size = 6, sort = "id", direction = Direction.DESC) Pageable pageable) {
		Page<NewsEntity> news = newsService.findAllNews(pageable);
		model.addAttribute("news", news);
		
		return "news/home";	
	}
	
	@GetMapping("/news/write")
	public String fetchWriteNews() {
	
		return "news/write-news";	
	}
	
	@GetMapping("/news/{id}")
	public String fetchNoticeDetail(@PathVariable int id, Model model) {
		System.out.println("123");
		model.addAttribute("news", newsService.getNewsDetail(id));
		return "/news/detail";
	}
}

package com.threebee.starentertainment.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.threebee.starentertainment.entity.NewsEntity;

public interface INewsRepository extends JpaRepository<NewsEntity, Integer>{

}
	



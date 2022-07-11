package com.codingdojo.NowakWork.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.NowakWork.models.Job;

@Repository
public interface JobRepository extends CrudRepository<Job, Long>{
	
	//Need to add findAll
	
	List<Job> findAll();

}

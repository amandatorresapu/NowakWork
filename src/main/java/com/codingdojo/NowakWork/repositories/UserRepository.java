package com.codingdojo.NowakWork.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.NowakWork.models.User;



@Repository
public interface UserRepository extends CrudRepository<User, Long>{
	
	//Need to add findAll
	
	List<User> findAll();
	Optional<User> findByEmail(String email);
	

}

package com.codingdojo.NowakWork.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.NowakWork.models.Job;
import com.codingdojo.NowakWork.repositories.JobRepository;




@Service
public class JobService {
	
	private final JobRepository jobRepository;

	public JobService(JobRepository jobRepository) {
		this.jobRepository = jobRepository;
	}
	
	public List<Job> allJobs(){
		return jobRepository.findAll();
	}
	
	
	public Job findOne(Long id) {
		Optional<Job> optionalSong = jobRepository.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		}else {
			return null;
		}

		
	}
	
	//find by something specific in the future!!!!
//	public List <Song>findCategory(String category) {
//		List<Song> optionalSongCat = songRepository.findAllByCategory(category);
////		if(optionalSongCat.isPresent()) {
////			return optionalSongCat.get();
////		} else {
////			return null;
////		}
//		return optionalSongCat;
//	}
	
	public Job create(Job job) {
		return jobRepository.save(job);
	}
	
	public Job update(Job job) {
		return jobRepository.save(job);
	}
	
	public void delete(Long id) {
		jobRepository.deleteById(id);
	}
	
	
	

}

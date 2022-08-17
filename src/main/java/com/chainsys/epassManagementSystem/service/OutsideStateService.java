package com.chainsys.epassmanagementsystem.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.epassmanagementsystem.model.OutsideState;
import com.chainsys.epassmanagementsystem.repository.OutsideStateRepository;

import oracle.jdbc.proxy.annotation.Post;

@Service
public class OutsideStateService {

	@Autowired
	private OutsideStateRepository outsideStateRepository;
	
	public OutsideState findById(int id) {
		return outsideStateRepository.findById(id);
	}
	
	public List<OutsideState> getAllOutsideState() {
		return outsideStateRepository.findAll();
	}
	
	@Transactional
	public OutsideState save(OutsideState outsideState) {
		return outsideStateRepository.save(outsideState);
	}
	
//	public byte[] getPostImageByteArray(int id) {
//		OutsideState post = outsideStateRepository.findById(id);
//		byte[] imageBytes = null;
//			
//			if(post != null)
//			{
//				imageBytes = post.getPosts();
//			}
//			else
//			{	
//				System.out.println("debug:" + this.getClass().getName() + " image is null " + id);
//			}	
//		return imageBytes;
//	}
}

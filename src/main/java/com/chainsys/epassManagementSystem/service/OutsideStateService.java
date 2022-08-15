package com.chainsys.epassmanagementsystem.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.epassmanagementsystem.model.OutsideState;
import com.chainsys.epassmanagementsystem.repository.OutsideStateRepository;

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
	
//	public OutsideState storeFile(MultipartFile file) {
//        // Normalize file name
//        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
//
//        try {
//            // Check if the file's name contains invalid characters
//            if(fileName.contains("..")) {
//                throw new FileStorageException("Sorry! Filename contains invalid path sequence " + fileName);
//            }
//
//            OutsideState dbFile = new OutsideState(fileName, file.getContentType(), file.getBytes());
//
//            return dbFileRepository.save(dbFile);
//        } catch (IOException ex) {
//            throw new FileStorageException("Could not store file " + fileName + ". Please try again!", ex);
//        }
//    }
//
//    public DBFile getFile(String fileId) {
//        return dbFileRepository.findById(fileId)
//                .orElseThrow(() -> new MyFileNotFoundException("File not found with id " + fileId));
//    }
}

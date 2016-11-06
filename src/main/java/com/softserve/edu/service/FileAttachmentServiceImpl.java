package com.softserve.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.softserve.edu.entity.FileAttachment;
import com.softserve.edu.repository.FileAttachmentRepository;

@Service
public class FileAttachmentServiceImpl implements FileAttachmentService {

    @Autowired
    private FileAttachmentRepository fileAttachmentRepository;
    
    @Override
    @Transactional
    public List<FileAttachment> findFileAttachmentByUserId(Integer userId) {
        return fileAttachmentRepository.findByUserId(userId);
    }

}

package com.softserve.edu.service;

import java.util.List;

import com.softserve.edu.entity.FileAttachment;

public interface FileAttachmentService {
    
    List<FileAttachment> findFileAttachmentByUserId(Integer userId);
}

package com.softserve.edu.repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.softserve.edu.entity.FileAttachment;

public interface FileAttachmentRepository extends JpaRepository<FileAttachment, Serializable> {
    List<FileAttachment> findByUserId(Integer userId);
}

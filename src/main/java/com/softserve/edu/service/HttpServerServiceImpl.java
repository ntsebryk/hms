package com.softserve.edu.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.util.Response;

@Component
public class HttpServerServiceImpl {

    public Response uploadFile(MultipartFile file, String folder, Integer id) {
	BufferedOutputStream stream = null;
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                String uploadPath = System.getProperty("upload.path");
                File dir = new File(uploadPath + File.separator + folder + File.separator + id);
                if (!dir.exists()){
                    dir.mkdirs();
                }
                File uploadingFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
                stream = new BufferedOutputStream(new FileOutputStream(uploadingFile));
                stream.write(bytes);
                stream.flush();
                return Response.success("OK", "Success");

            } catch (IOException e) {
                return Response.error("Fail! => " + e.getMessage(), "Error");
            } finally {
                try {
                    stream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } else {
            return Response.error("Fail! File is empty", "Error");
        }
    }

}

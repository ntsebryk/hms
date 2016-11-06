package com.softserve.edu.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.softserve.edu.service.HttpServerServiceImpl;
import com.softserve.edu.util.Response;

@Controller
public class HttpServerController {

    @Autowired
    private HttpServerServiceImpl httpServerService;

    @RequestMapping(value = "/uploadImage", method = RequestMethod.POST)
    @ResponseBody
    public Response uploadFile(@RequestBody MultipartFile file, @RequestParam(value = "folder") String folder,
	    @RequestParam(value = "id") Integer id) {
	return httpServerService.uploadFile(file, folder, id);
    }
}

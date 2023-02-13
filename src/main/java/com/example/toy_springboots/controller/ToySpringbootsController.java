package com.example.toy_springboots.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.example.toy_springboots.service.ToySpringbootsService;
import com.example.toy_springboots.utils.CommonUtils;
import com.mysql.cj.protocol.Message;

@Controller
@RequestMapping(value = "/toySpringboots")
public class ToySpringbootsController {

    @Autowired
    ToySpringbootsService toySpringbootsService;

    @Autowired
    CommonUtils commonUtils;

    @RequestMapping(value = { "/toy_main" }, method = { RequestMethod.GET, RequestMethod.POST })
    public ModelAndView main(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = toySpringbootsService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/toy_main");
        return modelAndView;
    }

    @RequestMapping(value = { "/list" }, method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = toySpringbootsService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/list");
        return modelAndView;
    }

    @RequestMapping(value = { "/list_pagination/{currentPage}" }, method = RequestMethod.GET)
    public ModelAndView listPagination(@RequestParam Map<String, Object> params, @PathVariable String currentPage,
            ModelAndView modelAndView) {
        params.put("pageScale", 10);
        params.put("currentPage", Integer.parseInt(currentPage));
        Object resultMap = toySpringbootsService.getListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/list_pagination");
        return modelAndView;
    }

    @RequestMapping(value = { "/edit/{uniqueId}" }, method = RequestMethod.GET)
    public ModelAndView edit(@RequestParam Map<String, Object> params, @PathVariable String uniqueId,
            ModelAndView modelAndView) {

        params.put("USER_ID", uniqueId);
        Object resultMap = toySpringbootsService.getOneByUID(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/edit");
        return modelAndView;
    }

    @RequestMapping(value = { "/update" }, method = RequestMethod.POST)
    public ModelAndView update(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = toySpringbootsService.updateAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/list");
        return modelAndView;
    }

    @RequestMapping(value = { "/form" }, method = RequestMethod.GET)
    public ModelAndView form(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        modelAndView.setViewName("toySpringboots/edit");
        return modelAndView;
    }

    // @RequestMapping(value = { "/insert" }, method = RequestMethod.POST)
    // public ModelAndView insert(@RequestParam Map<String, Object> params,
    // ModelAndView modelAndView) {
    // Object resultMap = toySpringbootsService.insertOneAndGetList(params);
    // modelAndView.addObject("resultMap", resultMap);
    // modelAndView.setViewName("toySpringboots/list");
    // return modelAndView;
    // }

    @RequestMapping(value = { "/insert" }, method = RequestMethod.POST)
    public ModelAndView insert(MultipartHttpServletRequest multipartHttpServletRequest,
            @RequestParam Map<String, Object> params, ModelAndView modelAndView)
            throws IllegalStateException, IOException {

        Iterator<String> fileNames = multipartHttpServletRequest.getFileNames();
        String relativePath = "C:\\Develops\\toy_springboots\\src\\main\\resources\\static\\files\\";

        Map attachFile = null;
        List attachFiles = new ArrayList<>();
        String physicalFileName = commonUtils.getUniqueSequence();
        String storePath = relativePath + physicalFileName + "\\";
        File newPath = new File(storePath);
        newPath.mkdir(); // 폴더 만들어줌

        while (fileNames.hasNext()) {
            String fileName = fileNames.next();
            MultipartFile multipartFile = multipartHttpServletRequest.getFile(fileName);
            String originalFileName = multipartFile.getOriginalFilename();
            String storePathFileName = storePath + originalFileName;
            multipartFile.transferTo(new File(storePathFileName));

            attachFile = new HashMap<>();
            attachFile.put("ATTACHFILE_SEQ", commonUtils.getUniqueSequence());
            /* 랜덤으로 생성 */
            attachFile.put("SOURCE_UNIQUE_SEQ", params.get("USER_ID"));
            attachFile.put("ORGINALFILE_NAME", originalFileName);
            attachFile.put("PHYSICALFILE_NAME", physicalFileName);
            attachFile.put("REGISTER_SEQ", params.get("REGISTER_SEQ"));
            attachFile.put("MODIFIER_SEQ", params.get("MODIFIER_SEQ"));

            attachFiles.add(attachFile);
        }
        params.put("attachFiles", attachFiles);

        Object resultMap = toySpringbootsService.insertWithFilesAndGetList(params);

        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/list");
        return modelAndView;
    }

    @RequestMapping(value = { "/delete/{uniqueId}" }, method = { RequestMethod.POST, RequestMethod.GET })
    public ModelAndView delete(@RequestParam Map<String, Object> params, @PathVariable String uniqueId,
            ModelAndView modelAndView) {
        params.put("USER_ID", uniqueId);
        Object resultMap = toySpringbootsService.deleteAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/list");
        return modelAndView;
    }

    @RequestMapping(value = { "/login" }, method = RequestMethod.POST)
    public ModelAndView login(@RequestParam Map<String, Object> params, @PathVariable String uniqueId,
            ModelAndView modelAndView) {
        Object resultMap = toySpringbootsService.login(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/list");
        return modelAndView;
    }
}

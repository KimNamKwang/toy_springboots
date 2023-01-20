package com.example.toy_springboots.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.toy_springboots.service.ToySpringbootsService;

@Controller
@RequestMapping(value = "/toySpringboots")
public class ToySpringbootsController {

    @Autowired
    ToySpringbootsService toySpringbootsService;

    @RequestMapping(value = { "/list", "/", "" }, method = RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = toySpringbootsService.getList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/list");
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

    @RequestMapping(value = { "/insert" }, method = RequestMethod.POST)
    public ModelAndView insert(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = toySpringbootsService.insertOneAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/list");
        return modelAndView;
    }

    @RequestMapping(value = { "/delete/{uniqueId}" }, method = RequestMethod.POST)
    public ModelAndView delete(@RequestParam Map<String, Object> params, @PathVariable String uniqueId,
            ModelAndView modelAndView) {
        params.put("USER_ID", uniqueId);
        Object resultMap = toySpringbootsService.deleteAndGetList(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("toySpringboots/list");
        return modelAndView;
    }
}

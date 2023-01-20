package com.example.toy_springboots.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*@ServletComponentScan을 걸어주는것과 같음 */
@Controller
public class HomeController {

    @RequestMapping(value = { "", "/", "/main" }) /* 주소를 여러개 넣을 수 있음 */
    public String main() {
        return "main";
    }

}

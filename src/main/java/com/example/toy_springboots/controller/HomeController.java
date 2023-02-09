package com.example.toy_springboots.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*@ServletComponentScan을 걸어주는것과 같음 */
@Controller
public class HomeController {
    @GetMapping({ "/", "" }) /* 관리자와 일반 모두 접속 가능 */
    public ModelAndView main(ModelAndView modelAndView) {
        /*  */
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            String username = ((UserDetails) principal).getUsername();
            System.out.println(((UserDetails) principal).getUsername());
            System.out.println(((UserDetails) principal).getAuthorities());
            System.out.println(((UserDetails) principal).getPassword());
            System.out.println(((UserDetails) principal).isAccountNonExpired());
            System.out.println(((UserDetails) principal).isAccountNonLocked());
            System.out.println(((UserDetails) principal).isCredentialsNonExpired());
            System.out.println(((UserDetails) principal).isEnabled());
        } else {
            String username = principal.toString();
        }
        String viewName = "main";
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

    @RequestMapping(value = { "/main" })
    public String main() {
        return "main";
    }

}

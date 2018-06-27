package com.nenu.controller.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class viewController {

    @RequestMapping(value="cms/blogManage/blogManageIndex")
    public String blogManageIndex(){
        return "cms/blogManage/blogManageIndex";
    }
}

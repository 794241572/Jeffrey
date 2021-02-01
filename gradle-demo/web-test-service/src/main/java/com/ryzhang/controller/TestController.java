package com.ryzhang.controller;

import com.ryzhang.model.Person;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author ryzhang5
 * @Package com.ryzhang.controller
 * @date 2019/9/22 11:31
 * @Copyright
 */
@Controller
public class TestController {


    @RequestMapping("/test")
    @ResponseBody
    public Person test(){
        Person person = new Person("小明",18);

        return  person;
    }
}

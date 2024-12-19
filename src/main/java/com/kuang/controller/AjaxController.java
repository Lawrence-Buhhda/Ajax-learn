package com.kuang.controller;

import com.kuang.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

//扫描到
@Controller
@RequestMapping("/Jquery1")
public class AjaxController {
    //第一种方式，服务器要返回一个字符串，直接使用response Tes
    @RequestMapping("/back")
//    @ResponseBody
    public void ajax(String name, HttpServletResponse response) throws IOException {
        if("admin".equals(name)){
            response.getWriter().print("true");
        }else{
            response.getWriter().print("false");
        }
    }

    @RequestMapping("/back2")
    @ResponseBody
    public List<User> ajax2() throws IOException {
        List<User> list =new ArrayList<>();

        User user1=new User("大疆一号",1,"男");
        User user2=new User("大疆二号",1,"男");
        User user3=new User("大疆三号",1,"男");
        User user4=new User("大疆四号",1,"男");
        list.add(user1);
        list.add(user2);
        list.add(user3);
        list.add(user4);

        return list;//由于加了@ResponseBody注解，他会返回一个字符串
    }
//登录注册案例
    @RequestMapping("/back3")
    @ResponseBody
    public String ajax3(String name,String pwd) throws IOException {
        String msg = "";
        if (name != null) {
            if ("admin".equals(name)) {
                msg = "ok";
            } else {
                msg = "用户名有误";
            }
        }
        if (pwd != null) {
            if ("123456".equals(pwd)) {
                msg = "ok";
            } else {
                msg = "密码有误";
            }
        }
        return msg;
    }
}

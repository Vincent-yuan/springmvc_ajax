package cn.vincent.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.vincent.vo.User;

@Controller
public class AjaxController {
	@RequestMapping("/ajax.do")
	public String ajax(HttpServletResponse resp) throws IOException{
		resp.getWriter().print("ajax hello");
		return null;
	}
	@RequestMapping("/json.do")
	@ResponseBody//将返回内容插入页面中
	public List<User> list(){
		List<User> list = new ArrayList<User>();
		list.add(new User(1,"张三",22));
		list.add(new User(2,"李四",32));
		return list;
	}
}

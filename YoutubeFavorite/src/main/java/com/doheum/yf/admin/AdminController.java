package com.doheum.yf.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.doheum.yf.model.UserVO;
import com.doheum.yf.model.YoutubeVO;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping("loginForm")
	public String loginForm() {
		return "admin/loginForm";
	}
	
	@RequestMapping("main")
	public String main() {
		return "admin/main";
	}
	
	@RequestMapping("accessDenied")
	public String accessDenied() {
		return "admin/accessDenied";
	}
	
	@RequestMapping("join")
	public String joinGet() {
		return "admin/joinForm";
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String joinPost(UserVO vo) {		
		System.out.println("joinPost!!");
		System.out.println("name : " + vo.getU_name());
		
		service.join(vo);
		return "redirect:loginForm";
	}
	
	@RequestMapping("insertURL")
	public String insertURLGet() {
		return "admin/insertURL";
	}
	
	@RequestMapping(value="insertURL", method=RequestMethod.POST)
	public String insertURLPost(YoutubeVO vo) {
		//TODO insert 수행
		System.out.println("url : " + vo.getY_url());
		System.out.println("title : " + vo.getY_title());
		service.insertURL(vo);
		return "redirect:main";
	}
}

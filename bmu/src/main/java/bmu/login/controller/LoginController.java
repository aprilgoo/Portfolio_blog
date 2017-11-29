package bmu.login.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import bmu.common.common.CommandMap;
import bmu.login.service.LoginService;

@Controller
public class LoginController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="loginService")
	private LoginService loginService;
	
	@ResponseBody
	@RequestMapping(value="/login/openLoginSession.do")
	public String openLoginSession(HttpSession session, CommandMap commandMap) throws Exception {
		
		String LoginFlag = "";
		
		Map<String, String> map = loginService.LoginCheck(commandMap.getMap());
		
		if (session.getAttribute("USER") != null) {
			session.removeAttribute("USER");
			
			
		} else if(map == null) {
			
			LoginFlag = "false";
			
			
		} else if (map != null) {
			
			session.setAttribute("USER", map);				
			LoginFlag = "yes";	
			
		}

		return LoginFlag;		
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/login/openLogoutSession.do")
	public String openLogoutSession(HttpSession session, CommandMap commandMap) throws Exception {
	
		String str = "";
		str = "index";
		
		if(session.getAttribute("USER")!=null) {
			session.removeAttribute("USER");
			session.invalidate();
		}		

		return str;	
		
	}	

}

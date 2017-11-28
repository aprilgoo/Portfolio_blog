package bmu.login.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bmu.common.common.CommandMap;
import bmu.login.service.LoginService;

@Controller
public class LoginController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="loginService")
	private LoginService loginService;
	
/**	@RequestMapping(value="/login/openLoginpage.do")
	public String openLoginpage() throws Exception {
		String returnURL = "";
		returnURL = "/login/login";
		return returnURL;
		
	} */
	
	
	@RequestMapping(value="/login/openLoginSession.do")
	public ModelAndView openLoginSession(HttpSession session, HttpServletRequest request, CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/login/login_ok");
		Map<String, Object> map = loginService.LoginCheck(session, request, commandMap.getMap());
		log.debug(map);
		
		return mv;	
		
	}

}

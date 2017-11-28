package bmu.login.service;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import bmu.login.dao.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="loginDAO")
	private LoginDAO loginDAO;


	@Override
	public Map<String, Object> LoginCheck(HttpSession session, HttpServletRequest request, Map<String, Object> map)
			throws Exception {
		
		String ID = request.getParameter("USER_ID");
		String PWD = request.getParameter("USER_PWD");
		
		if	(ID == (String)map.get("USER_ID") && PWD == (String)map.get("USER_PWD")) {
			
			log.debug("검증한다");
			request.getSession().setAttribute("USER", map);
			request.getSession().setAttribute("USER_ID", map.get("USER_ID"));
			request.getSession().setAttribute("USER_PWD", map.get("USER_PWD"));
			request.getSession().setAttribute("USER_NO", map.get("USER_NO"));			
		} 
		
		
		if (session.getAttribute("USER") != null) {
			session.removeAttribute("USER");
		}		
		
		
		log.debug(ID);
					
		return loginDAO.LoginCheck(map);
			
	}

}

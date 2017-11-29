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
	public Map<String, String> LoginCheck(Map<String, Object> map) throws Exception {
		return loginDAO.LoginCheck(map);
	}




}

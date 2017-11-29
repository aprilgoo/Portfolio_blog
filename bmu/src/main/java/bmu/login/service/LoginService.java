package bmu.login.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface LoginService {

	Map<String, String> LoginCheck(Map<String, Object> map) throws Exception;

	
	

}

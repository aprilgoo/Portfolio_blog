package bmu.login.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface LoginService {

	Map<String, Object> LoginCheck(HttpSession session, HttpServletRequest request, Map<String, Object>map) throws Exception;
	

}

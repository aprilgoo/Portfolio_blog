package bmu.login.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import bmu.common.resolver.CustomMapArgumentResolver;

public interface LoginService {

	Map<String, String> loginCheck(Map<String, Object> map) throws Exception;

	void insertMember(Map<String, Object> map)throws Exception;

	
	

}

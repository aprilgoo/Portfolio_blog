package bmu.login.dao;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import bmu.common.dao.AbstractDAO;

@Repository("loginDAO")
public class LoginDAO extends AbstractDAO {
	
	Logger log = Logger.getLogger(this.getClass());
	

	@SuppressWarnings("unchecked")
	public Map<String, String> loginCheck(Map<String, Object> map) throws Exception {
		return(Map<String, String>)selectOne("login.loginCheck", map);
	}


	public void insertMember(Map<String, Object> map) throws Exception {
		insert("login.insertMember", map);		
	}

}

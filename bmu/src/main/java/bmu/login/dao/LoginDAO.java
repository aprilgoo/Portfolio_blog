package bmu.login.dao;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import bmu.common.dao.AbstractDAO;

@Repository("loginDAO")
public class LoginDAO extends AbstractDAO {
	
	Logger log = Logger.getLogger(this.getClass());

	@SuppressWarnings("unchecked")
	public Map<String, Object> LoginCheck(Map<String, Object> map) throws Exception {
				
		return(Map<String, Object>)selectOne("login.LoginCheck", map);
	}

}

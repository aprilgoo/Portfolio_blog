package bmu.blog.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import bmu.common.dao.AbstractDAO;

@Repository("blogDAO")
public class BlogDAO extends AbstractDAO {


	@SuppressWarnings("unchecked")
	public List<Map<String, String>> selectPostList(String opt, String keyword) throws Exception {
		Map<String, String>map = new HashMap<String, String>();
		map.put("opt", opt);
		map.put("keyword", keyword);		
		return (List<Map<String, String>>)selectList("blog.selectPostList", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBlogDetail(Map<String, Object> map) throws Exception {
		return(Map<String, Object>)selectOne("blog.selectBlogDetail", map);
	}


	
	

	
	

}

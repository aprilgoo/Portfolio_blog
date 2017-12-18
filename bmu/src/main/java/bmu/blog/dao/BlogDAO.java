package bmu.blog.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import bmu.common.dao.AbstractDAO;

@Repository("blogDAO")
public class BlogDAO extends AbstractDAO {
	
	Logger log = Logger.getLogger(this.getClass());

	@SuppressWarnings("unchecked")
	public List<Map<String, String>> selectPostList(String opt, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("opt", opt);
		map.put("keyword", keyword);
		return (List<Map<String, String>>)selectList("blog.selectPostList", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBlogDetail(Map<String, Object> map) throws Exception {
		return(Map<String, Object>)selectOne("blog.selectBlogDetail", map);
	}

	public void insertPost(Map<String, Object> map) throws Exception  {
		
		insert("blog.insertPost", map);		
	}

	public void updatePost(Map<String, Object> map) throws Exception  {
		update("blog.updatePost", map);
		
	}

	public void deletePost(Map<String, Object> map) throws Exception {
		update("blog.deletePost", map);
		
	}

	public void insertComments(Map<String, Object> map) throws Exception {
		insert("blog.insertComments", map);
		
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> viewComments(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>)selectList("blog.viewComments", map);
	}

	public void deleteComment(Map<String, Object> map) throws Exception {
		update("blog.deleteComment", map);
		
	}

	public void modifyComment(Map<String, Object> map) {
		update("blog.modifyComment", map);		
	}




}

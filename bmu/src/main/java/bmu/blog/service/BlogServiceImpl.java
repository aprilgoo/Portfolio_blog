package bmu.blog.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import bmu.blog.dao.BlogDAO;
import bmu.common.common.CommandMap;

@Service("blogService")
public class BlogServiceImpl implements BlogService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="blogDAO")
	private BlogDAO blogDAO;

	@Override
	public List<Map<String, String>> selectPostList(String opt, String keyword) throws Exception {
		Map<String, String>map = new HashMap<String, String>();
		return blogDAO.selectPostList(opt, keyword);	
		
	}

	@Override
	public Map<String, Object> selectBlogDetail(Map<String, Object> map) throws Exception {
		return blogDAO.selectBlogDetail(map);
	}

	@Override
	public void insertPost(Map<String, Object> map) throws Exception {
		blogDAO.insertPost(map);	
		
	}

	@Override
	public void updatePost(Map<String, Object> map) throws Exception {
		blogDAO.updatePost(map);		
		
	}

	@Override
	public void deletePost(Map<String, Object> map) throws Exception {
		blogDAO.deletePost(map);		
	}

	@Override
	public String insertComments(Map<String, Object> map) throws Exception {
		blogDAO.insertComments(map);		
		String IDX = map.get("IDX").toString();		
		return IDX;
		
	}

	@Override
	public List<Map<String, Object>> viewComments(Map<String, Object> map) throws Exception {
		return blogDAO.viewComments(map);
	}

	@Override
	public void deleteComment(Map<String, Object> map) throws Exception {
		blogDAO.deleteComment(map);
		
	}

	@Override
	public void modifyComment(Map<String, Object> map) throws Exception {
		blogDAO.modifyComment(map);		
		
	}


}

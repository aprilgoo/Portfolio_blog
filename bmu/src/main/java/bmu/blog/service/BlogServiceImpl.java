package bmu.blog.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import bmu.blog.dao.BlogDAO;

@Service("blogService")
public class BlogServiceImpl implements BlogService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="blogDAO")
	private BlogDAO blogDAO;

	@Override
	public List<Map<String, String>> selectPostList(String opt, String keyword) throws Exception {
		
		log.debug(opt);
		log.debug(keyword);
		
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


}

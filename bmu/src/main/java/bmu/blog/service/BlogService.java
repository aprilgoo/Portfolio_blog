package bmu.blog.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import bmu.common.common.CommandMap;

public interface BlogService {

	List<Map<String, String>> selectPostList(String opt, String keyword) throws Exception;

	Map<String, Object> selectBlogDetail(Map<String, Object> map) throws Exception;

	void insertPost(Map<String, Object> map) throws Exception;

	void updatePost(Map<String, Object> map) throws Exception;

	void deletePost(Map<String, Object> map) throws Exception;

	String insertComments(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> showComments() throws Exception;	


}

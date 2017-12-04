package bmu.blog.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bmu.blog.service.BlogService;
import bmu.common.common.CommandMap;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


@Controller
public class BlogController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="blogService")
	private BlogService blogService;
	
	
	@RequestMapping("/blog/openIndex.do")
	public String openIndex( ) throws Exception {
		String str = "";
		str = "redirect:/index.jsp";
		return str;
	}	
	
	
    @RequestMapping(value="/blog/openBlogMain.do")
    public ModelAndView openBlogMain(@RequestParam(defaultValue="TITLE") String opt, @RequestParam(defaultValue="") String keyword, Map<String,Object>commandMap) throws Exception {
        ModelAndView mv = new ModelAndView("/blog/blogMain");        
          
        List<Map<String, String>> list = blogService.selectPostList(opt, keyword);    
    	Map<String,Object>map = new HashMap<String, Object>();
    	map.put("list", list);
    	map.put("opt", opt);
    	map.put("keyword", keyword);
    	mv.addObject("map", map);     	
        return mv;        
    }
    
    
    @RequestMapping(value="/blog/openBlogDetail.do")
    public ModelAndView openblogDetail(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("/blog/blogDetail");
    	
    	//글 내용 보여주기
    	Map<String, Object>map = blogService.selectBlogDetail(commandMap.getMap());
    	mv.addObject("map", map);
    	
    	//댓글 내용 보여주기
       	List<Map<String,Object>> list = blogService.showComments();
       	mv.addObject("list", list);
       	
		return mv; 	    	
    	
    }
    
    
   @RequestMapping(value="/blog/openBlogWrite.do")
    public String openblogWrite() throws Exception  {
    	
	   String str  = "";
	   str = "/blog/postWrite";
	   return str;	   
   
   }
    
    
    
    
    @RequestMapping(value="/blog/insertBlog.do")
    public ModelAndView insertBlog(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("redirect:/blog/openIndex.do");
    	log.debug(commandMap.getMap());
    	
    	blogService.insertPost(commandMap.getMap());    	
		return mv;  	   	
    	
    }
    
    
    @RequestMapping(value="/blog/openPostUpdate.do")
    public ModelAndView openPostUpdate(CommandMap commandMap) throws Exception {    	
       ModelAndView mv = new ModelAndView("/blog/postUpdate"); 	   
 	   Map<String, Object>map = blogService.selectBlogDetail(commandMap.getMap());
 	   mv.addObject("map", map);
 	   log.debug(map);
 	   return mv;	   
    }
    
    
    
   @RequestMapping(value="/blog/updateBlog.do")
   public ModelAndView updateBlog(CommandMap commandMap) throws Exception {
   	ModelAndView mv = new ModelAndView("redirect:/blog/openIndex.do");
   		blogService.updatePost(commandMap.getMap());   		
   		return mv;  
    
   }
    
    
   
   @RequestMapping(value="/blog/deletePost.do")
   public ModelAndView deletePost(CommandMap commandMap) throws Exception {
   	ModelAndView mv = new ModelAndView("redirect:/blog/openIndex.do");
   		blogService.deletePost(commandMap.getMap());   		
   		return mv;  
    
   }
   
   
   
   @RequestMapping(value="/blog/insertComments.do")
   public ModelAndView insertComments(CommandMap commandMap) throws Exception {
	   String map = blogService.insertComments(commandMap.getMap());	   
	   ModelAndView mv = new ModelAndView("redirect:/blog/openBlogDetail.do?IDX="+ map);	
	   return mv;  	   
   }
   

}
	


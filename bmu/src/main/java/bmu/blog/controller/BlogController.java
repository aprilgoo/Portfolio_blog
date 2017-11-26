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
	
    @RequestMapping(value="/blog/openBlogMain.do")
    public ModelAndView openBlogMain(@RequestParam(defaultValue="TITLE") String opt, @RequestParam(defaultValue="") String keyword, Map<String,Object>commandMap) throws Exception {
        ModelAndView mv = new ModelAndView("/blog/blogMain");        
          
        List<Map<String, String>> list = blogService.selectPostList(opt, keyword);    
    	Map<String,Object>map = new HashMap<String, Object>();
    	map.put("list", list);
    	map.put("opt", opt);
    	map.put("keyword", keyword);
    	mv.addObject("map", map);
    	// mv.setViewName("/blog/blogMain");
    	
        return mv;        
    }
    
    
    @RequestMapping(value="/blog/openBlogDetail.do")
    public ModelAndView openblogDetail(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("/blog/blogDetail");
    	Map<String, Object>map = blogService.selectBlogDetail(commandMap.getMap());
    	mv.addObject("map", map);
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
    	ModelAndView mv = new ModelAndView("/blog/blogMain");
    	log.debug(commandMap.getMap());
    	
    	blogService.insertPost(commandMap.getMap());
    	
    	
		return mv;  	
    	
    	
    }
    
    
    
    
    
    
    
    
    /**
     * 
     * 
     *     @RequestMapping(value="")
    public ModelAndView openblogDetail() {
    	ModelAndView mv = new ModelAndView("");
		return mv;  	
    	
    	
    }
     * 
     * 
     */
    

	
	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
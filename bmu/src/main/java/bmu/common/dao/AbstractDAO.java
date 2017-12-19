package bmu.common.dao;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.codehaus.plexus.util.StringUtils;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class AbstractDAO {
    protected Log log = LogFactory.getLog(AbstractDAO.class);
     
    @Autowired
    private SqlSessionTemplate sqlSession;
    // SqlSessionTemplage를 선언하고 autowired 어노테이션을 통해서 xml에 선언했던
    // 의존관계를 자동으로 주입하도록 함
    // 쿼리는 sqlSession 메서드를 호출하면 되는데, 로그를 남기기 위해서
    // AbstractDAO를 만들어서 insert, delete, update, select 메서드를 재정의함
    // 비즈니스 로직을 담당할 DAO를 생성하여 AbstractDAO를 상속받도록 함
     
    protected void printQueryId(String queryId) {
        if(log.isDebugEnabled()){
            log.debug("\t QueryId  \t:  " + queryId);
        }
    }
     
    public Object insert(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.insert(queryId, params);
    }
     
    public Object update(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.update(queryId, params);
    }
     
    public Object delete(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.delete(queryId, params);
    }
     
    public Object selectOne(String queryId){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId);
    }
     
    public Object selectOne(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId, params);
    }
     
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId){
        printQueryId(queryId);
        return sqlSession.selectList(queryId);
    }
     
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectList(queryId,params);
    }
    
    // 페이징 함수
    @SuppressWarnings("unchecked")
	public Object selectPagingList(String queryId, Object params){
    	printQueryId(queryId);
    	Map<String,Object> map = (Map<String,Object>)params;
    	
    	String strPageIndex = (String)map.get("PAGE_INDEX");
    	String strPageRow = (String)map.get("PAGE_ROW");
    	
    	int nPageIndex = 0;
    	int nPageRow = 20;
    	
    	//StringUtils 클래스(Apache common 클래스)
    	if(StringUtils.isEmpty(strPageIndex) == false) {
    		nPageIndex = Integer.parseInt(strPageIndex)-1;
    		}
    	
    	if(StringUtils.isEmpty(strPageRow) == false) {
    		nPageRow = Integer.parseInt(strPageRow);
    		}
    	
    	map.put("START", (nPageIndex * nPageRow) + 1);
//    	map.put("END", (nPageIndex * nPageRow) + nPageRow);    	
    	map.put("END", 15); 
    	
		return sqlSession.selectList(queryId, map);    	
    	
    }
    
    
    
}
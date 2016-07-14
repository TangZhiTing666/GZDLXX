package com.supersit.gzdlxx.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.supersit.gzdlxx.common.Constant;

/**
  * @Author zliang @qq 369756160
  * @Description: 登录拦截器
  * @Date 2016年5月5日 -- 下午3:39:13
  * @Email smilemtzl@163.com
  * @Tel  13510992928
  * @version 1.0
  *
  */
public class loginInterceptor implements HandlerInterceptor{

	private List<String> excludedUrls;
	
	public List<String> getExcludedUrls() {
		return excludedUrls;
	}

	public void setExcludedUrls(List<String> excludedUrls) {
		this.excludedUrls = excludedUrls;
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object object, Exception exception)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object object, ModelAndView modelAndView) throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object object) throws Exception {
		String requestUri = request.getRequestURI();
		for (String url : excludedUrls) {
            if (requestUri.endsWith(url)) {
                return true;
            }
        }
		// intercept
        HttpSession session = request.getSession();
        System.out.println("-------------------------------------------"+session.getAttribute("memberLogin"));
        if (session.getAttribute("memberLogin") == null) { 
        	//response.getWriter().print(Constant.CHARACTER_ENCODING);
        	//response.setCharacterEncoding("UTF-8");
        	response.setContentType("text/html;charset=UTF-8"); 
        	response.getWriter().print("<script>alert('请重新登录')</script>");
        	response.getWriter().print("<script>parent.location='/GZDLXX/login.do'</script>");
//        	request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
        	return false; 
        } else { 
            return true;
        }
	}

}

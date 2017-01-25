package org.biswajit.resolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

@Component
public class GlobalHandlerExceptionResolver implements HandlerExceptionResolver {

	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exception) {
		
		ModelAndView mav = new ModelAndView();
		//String message=exception.getCause().getMessage();
		mav.setViewName("global_error");
		mav.addObject("errorMessage", exception.getMessage());
		return mav;
	}

}

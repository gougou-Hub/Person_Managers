/**
 * 
 */
package com.wy.tool;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.struts.DelegatingRequestProcessor;

/**
 * @author Haitao Sun
 *
 */
public class SelfRequestProcessor extends DelegatingRequestProcessor{
	public SelfRequestProcessor() {
	}

	protected boolean processPreprocess(HttpServletRequest request,
			HttpServletResponse response) {
	
		super.processPreprocess(request, response);
		
		try {
			request.setCharacterEncoding("utf8");
		} catch (UnsupportedEncodingException ex) {
			ex.printStackTrace();
		}
		return true;
	}

}

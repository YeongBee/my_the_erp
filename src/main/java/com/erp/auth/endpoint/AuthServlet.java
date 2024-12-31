package com.erp.auth.endpoint;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.auth.service.AuthService;
import com.erp.auth.service.impl.AuthServiceImpl;
import com.erp.auth.vo.AuthDTOs.LoginRequestDTO;
import com.erp.auth.vo.AuthDTOs.RegisterRequestDTO;
import com.erp.common.rest.RestBusinessException;
import com.erp.common.rest.RestResponse;
import com.erp.common.security.UserInfo;
import com.erp.common.util.AES256Util;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import static com.erp.common.rest.RestBusinessException.StatusCode;


@WebServlet("/api/v1/auth/*")
public class AuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final AuthService authService = new AuthServiceImpl();
	private final ObjectMapper om = new ObjectMapper();
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(!request.getContentType().equals("application/json")) throw new RestBusinessException(StatusCode.BAD_REQUEST);
		response.setContentType("application/json");
		StringBuilder jsonData = new StringBuilder();
	    String line;
	    try (BufferedReader reader = request.getReader()) {
	        while ((line = reader.readLine()) != null) {
	            jsonData.append(line);
	        }
	    }
	    String jsonString = jsonData.toString();
	    Object responseObject = "";
		switch(request.getRequestURI()) {
		case "/api/v1/auth/register" : {
			authService.register(om.reader().readValue(jsonString, RegisterRequestDTO.class));
			response.setStatus(HttpServletResponse.SC_CREATED);
			responseObject = RestResponse.builder().data(new Date()).message("CREATED").build();
			break;
			}
		case "/api/v1/auth/login" : {
			UserInfo responseDto = authService.login(om.reader().readValue(jsonString, LoginRequestDTO.class));
			response.setStatus(HttpServletResponse.SC_OK);
			try {
				Cookie cookie = new Cookie("auth", URLEncoder.encode(AES256Util.encrypt(om.writer().writeValueAsString(responseDto)), StandardCharsets.UTF_8));
				cookie.setMaxAge(3600); 
		        cookie.setPath("/");
		        response.addCookie(cookie);
		        responseObject = RestResponse.builder().data(new Date()).message("OK").build();
			} catch (Exception e) {
				throw new RestBusinessException(StatusCode.UNEXPECTED_ERROR, e);
			} 
			break;
			}
		default : throw new RestBusinessException(StatusCode.BAD_REQUEST);
		}
		
		response.getWriter().write(om.writer().writeValueAsString(responseObject));	
	}

}

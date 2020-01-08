package com.winpoint.oes.controllers.student;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.winpoint.oes.beans.Course;
import com.winpoint.oes.beans.CourseType;
import com.winpoint.oes.beans.Stream;
import com.winpoint.oes.beans.Topic;
import com.winpoint.oes.beans.UserProfile;
import com.winpoint.oes.helpers.common.CourseHelper;
import com.winpoint.oes.helpers.common.LoginHelper;
import com.winpoint.oes.helpers.common.StreamHelper;
import com.winpoint.oes.helpers.common.TopicsHelper;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/CourseTopicsSelectServlet")
public class CourseTopicsSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseTopicsSelectServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("From CourseTopicsSelectServlet");
		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
	    String json = "";
	    if(br != null){
	    	json = br.readLine();
	    }
	   
		Gson gson = new Gson();
		Course course = gson.fromJson(json, Course.class);
		int courseId =  course.getCourseId();
		
		List<Topic> courseList = new TopicsHelper().getTopicsList(courseId);
				
		if(courseList != null) {
			String json1 = null;
		    json1 = gson.toJson("{ 'success': 'true', 'location': '/OnlineEvaluationSystem/jsp/MainCoursePage.jsp'}");
		    String json2 = gson.toJson(courseList);
		  		   
		    String jsonString = "[" + json2  + "]";
		    System.out.println("Json string is " + jsonString);
		    PrintWriter writer = response.getWriter();
		    writer.println(jsonString);
		    writer.flush();
		}
	}
}

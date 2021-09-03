package com.example.jcg;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HelloController
	{
	    @RequestMapping(value="/hello")
	    public ModelAndView hello()
	    {
	        return new ModelAndView("hello");
	    }
	    @RequestMapping(value="/userdetails",method=RequestMethod.GET,produces="application/json")
	    public UserDetails userdetails()
	    {
	        UserDetails userDetails = new UserDetails();
	        userDetails.setName("JCG");
	        userDetails.setDepartment("Angular");
	        
	        return userDetails;
	    }
	}
	



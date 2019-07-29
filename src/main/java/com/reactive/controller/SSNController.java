package com.reactive.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.reactive.service.TodoService;

@Controller
@SessionAttributes("name")
public class SSNController {
	
	@Autowired
	TodoService service;
	
	@RequestMapping(value="/ssn", method = RequestMethod.GET)
	public String showTodos(ModelMap model){
		return "ssn";
	}
}

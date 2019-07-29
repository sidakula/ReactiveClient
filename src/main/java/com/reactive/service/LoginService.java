package com.reactive.service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {

	public boolean validateUser(String userid, String password) {
		// in28minutes, dummy
		return userid.equalsIgnoreCase("reactive")
				&& password.equalsIgnoreCase("reactive");
	}

}

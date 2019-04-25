package com.boot.security.server.utils;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.boot.security.server.dto.LoginUser;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class UserUtil {

	public static void main(String[] s){
				String ss = new BCryptPasswordEncoder().encode("qq");
				System.out.println(ss);
	}

	public static LoginUser getLoginUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			if (authentication instanceof AnonymousAuthenticationToken) {
				return null;
			}

			if (authentication instanceof UsernamePasswordAuthenticationToken) {
				return (LoginUser) authentication.getPrincipal();
			}
		}

		return null;
	}

}

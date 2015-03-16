package com.cn.util;

import com.cn.hnust.model.User;

public class StudentUtil {
	public static String[] convertToArray(User user){
		if(user == null) return null;
		return new String[]{user.getUserName(), user.getPassword()};
	}
}

package org.biswajit.test;

import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;

public class Test {
	public static void main(String[] args) {
		
		StandardPasswordEncoder encoder=new StandardPasswordEncoder();
		BCryptPasswordEncoder bcrypt=new BCryptPasswordEncoder();
		ShaPasswordEncoder shaEncoder=new ShaPasswordEncoder();
		
		String standardencodedPassword =encoder.encode("password");
		String bcryptEncodedPAssword=bcrypt.encode("password");
		String shaEncodedPassword=shaEncoder.encodePassword("secreat", ":$$#@!&*^%$#@@!#$%@!!@##$$");
		System.out.println(shaEncodedPassword);
//aa84188c52662cc1789455b58f8f1b4f0fe0eeac
		
	}

}

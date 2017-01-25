package org.biswajit.validator;

import javax.annotation.Resources;

import org.biswajit.data.enitites.Project;
import org.biswajit.data.enitites.Resource;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class ResourceValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Resource.class.equals(clazz);
	}

	public void validate(Object obj, Errors errors) {
	Resource resource = (Resource) obj;
		
		

	}

}

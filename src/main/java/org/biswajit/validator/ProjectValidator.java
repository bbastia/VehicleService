package org.biswajit.validator;

import org.biswajit.data.enitites.Project;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;



public class ProjectValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Project.class.equals(clazz);
	}


	public void validate(Object obj, Errors errors) {
		Project project = (Project) obj;
		
		if(project.getName().length() < 5){
			errors.rejectValue("name", "project.name", "The name is too short");
		}

	}

}

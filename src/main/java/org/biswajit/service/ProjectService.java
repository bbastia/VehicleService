package org.biswajit.service;

import java.math.BigDecimal;
import java.util.LinkedList;
import java.util.List;

import org.biswajit.data.enitites.Project;
import org.biswajit.data.enitites.Sponsor;
import org.springframework.stereotype.Component;


@Component
public class ProjectService {

		private List<Project> projects = new LinkedList<Project>();
		
		public ProjectService(){
			this.setProjects();
			
			//this.projects.addAll(Arrays.asList(new Project[]{javaProject, javascriptProject, htmlProject}));
		}
		
		private void setProjects() {
			Project javaProject = this.createProject(1l,"Java Project", "This is a Java Project", new Sponsor("Oracle", "555-555-5555", "oracle@oracle.com"));
			Project javascriptProject = this.createProject(2l,"Javascript Project", "This is a Javascript Project", new Sponsor("Mozilla", "555-555-5555", "mozilla@mozilla.com"));
			Project htmlProject = this.createProject(3l,"HTML Project", "This is an HTML project", new Sponsor("Google", "555-555-5555", "google@google.com"));
			
			this.projects.add(javaProject);
			this.projects.add(javascriptProject);
			this.projects.add(htmlProject);
			
		}

		public List<Project> findAll(){
			return this.projects;
		}
		
		public Project find(Long projectId){
			
		Project temp=null;
		
		for(Project project:projects){
			if(project.getProjectId().equals(projectId)){
				return project;
			}
		}
			
			return temp;
		}

		private Project createProject(Long ProjectId,String title, String description, Sponsor sponsor) {
			Project project = new Project();
			project.setProjectId(ProjectId);
			project.setName(title);
			project.setAuthorizedFunds(new BigDecimal("100000"));
			project.setAuthorizedHours(new BigDecimal("1000"));
			project.setProjectId(1L);
			project.setSpecial(false);
			project.setType("multi");
			project.setYear("2015");
			project.setDescription(description);
			project.setSponsor(sponsor);
			return project;
		}
		
		
		
}

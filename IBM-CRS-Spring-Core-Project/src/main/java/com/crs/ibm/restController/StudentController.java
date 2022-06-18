package com.crs.ibm.restController;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crs.ibm.dao.StudentDAO;
import com.crs.ibm.exception.CourseNotAdded;

@RestController
@CrossOrigin
public class StudentController {
	@Autowired
	private StudentDAO studentDao;
	
	@RequestMapping(value="/addCourse")
	//@Path("/addCourse")
	@Consumes("application/json")
	@Produces(MediaType.APPLICATION_JSON)
	public Response AddCourse(@NotNull
			@Size(min = 4 , max = 10, message = "Course name length should be between 4 and 10 character")
			@PathVariable ("course_name") String cn, 
			@NotNull
			@Size(min = 4 , max = 10, message = "Student Code length should be between 4 and 10 character")
			@PathVariable("student_id") int stid,
			@NotNull
			@Size(min = 4 , max = 10, message = "Course Code length should be between 4 and 10 character")
			@PathVariable ("course_id") int crsid) throws CourseNotAdded{
		try {
		studentDao.AddCourse(cn, stid, crsid);
		return Response.status(201).entity( "You have successfully added Course : " + crsid).build();
		}catch(CourseNotAdded e) {
			return Response.status(500).entity(e.getMessage()).build();
		}
	}
}

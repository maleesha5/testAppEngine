package com.maleesha.officeappjsp;


import org.springframework.data.repository.CrudRepository;


public interface EmployeeRepository extends CrudRepository<Employee, Integer>{

	Iterable<Employee> findByFirstNameOrLastName(String fname, String lName);
	Iterable<Employee> findBylastName(String lname);
	Iterable<Employee> findByFirstNameAndLastName(String fname, String lName);
	Iterable<Employee> findBydepartmentMail(String mail);


}

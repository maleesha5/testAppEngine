package com.maleesha.officeappjsp;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeRepository employeeRep;

	@RequestMapping("/")
	public String welcome() {

		return "welcome";
	}

	// create employee page
	@GetMapping("/create")
	public String createEmployeePg(Model model) {

		model.addAttribute("employee", new Employee());
		return "create";
	}

	// display all employees
	@GetMapping("/getAll")
	public String getAll(Model model) {

		model.addAttribute("employees", employeeRep.findAll());
		return "display";

	}

	// create employee form mapping
	@PostMapping("/create")
	public String createEmployeeData(@ModelAttribute("employee") Employee employee, Map<String, Object> model) {

		model.put("message", "Employee " + employee.getFirstName() + " Added Successfully!!");
		employeeRep.save(employee);
		return "welcome";

	}

	// search user PSOT
	@PostMapping("/search")
	public String searchEmployee(@ModelAttribute Employee employee, Model model) {
		if (employee.getFirstName() != "" && employee.getLastName() != "") {
			model.addAttribute("employees",
					employeeRep.findByFirstNameAndLastName(employee.getFirstName(), employee.getLastName()));
		} else if (employee.getDepartmentMail() != "") {
			model.addAttribute("employees", employeeRep.findBydepartmentMail(employee.getDepartmentMail()));
		} else {
			model.addAttribute("employees",
					employeeRep.findByFirstNameOrLastName(employee.getFirstName(), employee.getLastName()));
		}

		return "display";

	}

	// search user GET
	@GetMapping("/search")
	public String searchEmployee(@ModelAttribute Employee employee) {
		return "search";

	}

	// delete user
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.GET)
	public String deleteUser(@PathVariable("id") int id, Map<String, Object> model) {
		employeeRep.delete(id);

		model.put("message", "Customer Deleted Successfully!!");
		return "welcome";

	}
}

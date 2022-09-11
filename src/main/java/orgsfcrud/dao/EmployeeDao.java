package orgsfcrud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import orgsfcrud.model.Employee;


@Component
public class EmployeeDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void saveEmployee(Employee employee) {
		this.hibernateTemplate.saveOrUpdate(employee);
	}
	
	
	// get all employee
		public List<Employee> getEmployees() {
			List<Employee> employees = this.hibernateTemplate.loadAll(Employee.class);
			return employees;
		}

		// delete single employee
		@Transactional
		public void deleteEmployee(int eid) {
			Employee emp = this.hibernateTemplate.load(Employee.class, eid);
			this.hibernateTemplate.delete(emp);
		}

		// get single employee
		public Employee getEmployee(int eid) {
			return this.hibernateTemplate.get(Employee.class, eid);
		}

}

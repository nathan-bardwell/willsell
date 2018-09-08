package com.nathanbardwell.model;

import java.time.LocalDate;
import java.util.List;

public interface CustomerDAO {

	List<Customer> getAllCustomers();
	
	void saveNewCustomer(Customer newCustomer);
	
	List<Customer> searchCustomers(String searchBy, String search);

	Customer getCustomerDetail(long id);

	List<Customer> searchCustomersByDate(String searchBy, LocalDate fromDate, LocalDate toDate);

	void updateCustomer(Customer editedCustomer);

	
	
	
}

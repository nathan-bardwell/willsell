package com.nathanbardwell.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Component
public class JDBCCustomerDAO implements CustomerDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCCustomerDAO(DataSource datasource) {
		this.jdbcTemplate = new JdbcTemplate(datasource);
	}

	@Override
	public List<Customer> getAllCustomers() {
		List<Customer> allCustomers = new ArrayList<>();
		String allCustomersSql = "SELECT * FROM customer ORDER BY last_name";
		SqlRowSet results = jdbcTemplate.queryForRowSet(allCustomersSql);
		while(results.next()) {
			allCustomers.add(mapRowToCustomer(results));
		}
		return allCustomers;
	}

	@Override
	public void saveNewCustomer(Customer newCustomer) {
		String saveCustomerSql = "INSERT INTO customer (first_name, last_name, phone, address_1, address_2, city, state, zip, email, account_num, install_date, install_time, " + 
				                                       "psu_phone, psu_internet, psu_tv, sale_location, date_of_sale, ez_connect, notes) "
				                                     + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(saveCustomerSql,
						     newCustomer.getFirstName(),
						     newCustomer.getLastName(),
						     newCustomer.getPhoneNumber(),
						     newCustomer.getAddress1(),
						     newCustomer.getAddress2(),
						     newCustomer.getCity(),
						     newCustomer.getState(),
						     newCustomer.getZipCode(),
						     newCustomer.getEmail(),
						     newCustomer.getAcctNumber(),
						     newCustomer.getInstallDate(),
						     newCustomer.getInstallTime(),
						     newCustomer.isPsuPhone(),
						     newCustomer.isPsuInternet(),
						     newCustomer.isPsuTV(),
						     newCustomer.getSaleLocation(),
						     newCustomer.getDateOfSale(),
						     newCustomer.isEzConnect(),
						     newCustomer.getNotes());
		
	}

	private Customer mapRowToCustomer(SqlRowSet results) {
		Customer customer = new Customer();
		
		customer.setId(results.getInt("id"));
		customer.setFirstName(results.getString("first_name"));
		customer.setLastName(results.getString("last_name"));
		customer.setPhoneNumber(results.getString("phone"));
		customer.setFmtPhoneNumber(results.getString("phone"));
		customer.setAddress1(results.getString("address_1"));
		customer.setAddress2(results.getString("address_2"));
		customer.setCity(results.getString("city"));
		customer.setState(results.getString("state"));
		customer.setZipCode(results.getInt("zip"));
		customer.setEmail(results.getString("email"));
		customer.setAcctNumber(results.getLong("account_num"));
		customer.setInstallDate(results.getDate("install_date").toLocalDate());
		customer.setInstallTime(results.getTime("install_time").toLocalTime());
		customer.setPsuPhone(results.getBoolean("psu_phone"));
		customer.setPsuInternet(results.getBoolean("psu_internet"));
		customer.setPsuTV(results.getBoolean("psu_tv"));
		customer.setSaleLocation(results.getString("sale_location"));
		customer.setDateOfSale(results.getDate("date_of_sale").toLocalDate());
		customer.setEzConnect(results.getBoolean("ez_connect"));
		customer.setNotes(results.getString("notes"));
		
		return customer;
	}

	@Override
	public List<Customer> searchCustomers(String searchBy, String search) {
		List<Customer> customers = new ArrayList<>();
		String customersSql = "SELECT * FROM customer "
							   + "WHERE " + searchBy + " ILIKE ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(customersSql, "%" + search + "%");
		while(results.next()) {
			customers.add(mapRowToCustomer(results));
		}
		return customers;
	}

	@Override
	public Customer getCustomerDetail(long id) {
		Customer customer = new Customer();
		String customerSql = "SELECT * FROM customer WHERE id = ?";
		SqlRowSet result = jdbcTemplate.queryForRowSet(customerSql, id);
		while(result.next()) {
			customer = mapRowToCustomer(result);
		}
		return customer;
	}

	@Override
	public List<Customer> searchCustomersByDate(String searchBy, LocalDate fromDate, LocalDate toDate) {
		List<Customer> customers = new ArrayList<>();
		String customersSql = "SELECT * FROM customer "
							   + "WHERE " + searchBy + " BETWEEN ? AND ?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(customersSql, fromDate, toDate);
		while(results.next()) {
			customers.add(mapRowToCustomer(results));
		}
		return customers;
	}

	@Override
	public void updateCustomer(Customer editedCustomer) {
		String updateCustomerSql = "UPDATE customer "
							  + "SET first_name = ?, last_name = ?, phone = ?, address_1 = ?, address_2 = ?, city = ?, state = ?, zip = ?, email = ?, "
							  + "account_num = ?, install_date = ?, install_time = ?, psu_phone = ?, psu_internet = ?, psu_tv = ?, sale_location = ?, "
							  + "date_of_sale = ?, ez_connect = ?, notes = ? "
							  + "WHERE id = ?";
		jdbcTemplate.update(updateCustomerSql,
			     editedCustomer.getFirstName(),
			     editedCustomer.getLastName(),
			     editedCustomer.getPhoneNumber(),
			     editedCustomer.getAddress1(),
			     editedCustomer.getAddress2(),
			     editedCustomer.getCity(),
			     editedCustomer.getState(),
			     editedCustomer.getZipCode(),
			     editedCustomer.getEmail(),
			     editedCustomer.getAcctNumber(),
			     editedCustomer.getInstallDate(),
			     editedCustomer.getInstallTime(),
			     editedCustomer.isPsuPhone(),
			     editedCustomer.isPsuInternet(),
			     editedCustomer.isPsuTV(),
			     editedCustomer.getSaleLocation(),
			     editedCustomer.getDateOfSale(),
			     editedCustomer.isEzConnect(),
			     editedCustomer.getNotes(),
				 editedCustomer.getId());
				
	}

}

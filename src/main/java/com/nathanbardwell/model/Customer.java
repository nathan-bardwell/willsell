package com.nathanbardwell.model;

import java.time.LocalDate;
import java.time.LocalTime;

public class Customer {
//Data
	private long id;
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private String fmtPhoneNumber;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private int zipCode;
	private String email;
	private long acctNumber;
	private LocalDate installDate;
	private LocalTime installTime;
	private boolean psuPhone;
	private boolean psuInternet;
	private boolean psuTV;
	private String saleLocation;
	private LocalDate dateOfSale;
	private boolean ezConnect;
	private String notes;
	
//Getters & Setters	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getZipCode() {
		return zipCode;
	}
	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getAcctNumber() {
		return acctNumber;
	}
	public void setAcctNumber(long acctNumber) {
		this.acctNumber = acctNumber;
	}
	public LocalDate getInstallDate() {
		return installDate;
	}
	public void setInstallDate(LocalDate installDate) {
		this.installDate = installDate;
	}
	public boolean isPsuPhone() {
		return psuPhone;
	}
	public void setPsuPhone(boolean psuPhone) {
		this.psuPhone = psuPhone;
	}
	public boolean isPsuInternet() {
		return psuInternet;
	}
	public void setPsuInternet(boolean psuInternet) {
		this.psuInternet = psuInternet;
	}
	public boolean isPsuTV() {
		return psuTV;
	}
	public void setPsuTV(boolean psuTV) {
		this.psuTV = psuTV;
	}
	public String getSaleLocation() {
		return saleLocation;
	}
	public void setSaleLocation(String saleLocation) {
		this.saleLocation = saleLocation;
	}
	public LocalDate getDateOfSale() {
		return dateOfSale;
	}
	public void setDateOfSale(LocalDate dateOfSale) {
		this.dateOfSale = dateOfSale;
	}
	public boolean isEzConnect() {
		return ezConnect;
	}
	public void setEzConnect(boolean ezConnect) {
		this.ezConnect = ezConnect;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public LocalTime getInstallTime() {
		return installTime;
	}
	public void setInstallTime(LocalTime installTime) {
		this.installTime = installTime;
	}
	public String getFmtPhoneNumber() {
		return fmtPhoneNumber;
	}
	public void setFmtPhoneNumber(String phoneNumber) {
		this.fmtPhoneNumber = "(" + phoneNumber.substring(0, 3) + ") " + phoneNumber.substring(3, 6) + "-" + phoneNumber.substring(6);;
	}
	
		
	
	

}

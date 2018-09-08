package com.nathanbardwell.controller;

import java.time.LocalDate;
import java.time.LocalTime;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nathanbardwell.model.CustomerDAO;
import com.nathanbardwell.model.Customer;

@Controller
public class CustomerController {

    @Autowired
    private CustomerDAO customerDao;

    @RequestMapping(path= {"/", "/newCustomer"}, method=RequestMethod.GET)
    public String showHomepage() {
        return "newCustomer";
    }

    @RequestMapping(path="/newCustomer", method=RequestMethod.POST)
    public String addNewCustomer(@RequestParam String firstName, @RequestParam String lastName,
                                 @RequestParam String phoneNumber, @RequestParam String address1, @RequestParam(defaultValue="") String address2,
                                 @RequestParam String city, @RequestParam String state, @RequestParam int zipCode,
                                 @RequestParam String email, @RequestParam long acctNumber, @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate installDate, @RequestParam @DateTimeFormat(iso = ISO.TIME) LocalTime installTime,
                                 @RequestParam(defaultValue="false") boolean psuPhone, @RequestParam(defaultValue="false") boolean psuInternet, @RequestParam(defaultValue="false") boolean psuTV,
                                 @RequestParam String saleLocation, @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateOfSale, @RequestParam(defaultValue="false") boolean ezConnect,
                                 @RequestParam(defaultValue="") String notes,
                                 RedirectAttributes flashScope) {

        Customer newCustomer = new Customer();
        newCustomer.setFirstName(firstName);
        newCustomer.setLastName(lastName);
        newCustomer.setPhoneNumber(phoneNumber);
        newCustomer.setFmtPhoneNumber(phoneNumber);
        newCustomer.setAddress1(address1);
        newCustomer.setAddress2(address2);
        newCustomer.setCity(city);
        newCustomer.setState(state);
        newCustomer.setZipCode(zipCode);
        newCustomer.setEmail(email);
        newCustomer.setAcctNumber(acctNumber);
        newCustomer.setInstallDate(installDate);
        newCustomer.setInstallTime(installTime);
        newCustomer.setPsuPhone(psuPhone);
        newCustomer.setPsuInternet(psuInternet);
        newCustomer.setPsuTV(psuTV);
        newCustomer.setSaleLocation(saleLocation);
        newCustomer.setDateOfSale(dateOfSale);
        newCustomer.setEzConnect(ezConnect);
        newCustomer.setNotes(notes);

        customerDao.saveNewCustomer(newCustomer);

        flashScope.addFlashAttribute("message", firstName + " " + lastName + " has been added to your database.");

        return "redirect:/newCustomer";
    }

    @RequestMapping(path="/customerSearchForm", method=RequestMethod.GET)
    public String showSearchForm() {
        return "customerList";
    }

    @RequestMapping(path="/customerSearchResults", method=RequestMethod.GET)
    public String showSearchResults(@RequestParam String searchBy, @RequestParam String search,
                                    @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate fromDate,
                                    @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate toDate,
                                    ModelMap modelHolder) {
        if (searchBy.equals("date_of_sale") || searchBy.equals("install_date")) {
            modelHolder.put("customers", customerDao.searchCustomersByDate(searchBy, fromDate, toDate));
        } else {
            modelHolder.put("customers", customerDao.searchCustomers(searchBy, search));
        }
        return "/customerList";
    }

    @RequestMapping(path="/customerDetail", method=RequestMethod.GET)
    public String showCustomerDetails(@RequestParam long id, ModelMap modelHolder) {
        modelHolder.put("customer", customerDao.getCustomerDetail(id));
        return "customerDetail";
    }

    @RequestMapping(path= {"/editCustomerDetail"}, method=RequestMethod.GET)
    public String showEditForm(@RequestParam long id, ModelMap modelHolder) {
        modelHolder.put("customer", customerDao.getCustomerDetail(id));
        return "editCustomerDetail";
    }

    @RequestMapping(path="/editCustomerDetail", method=RequestMethod.POST)
    public String editCustomerInfo(@RequestParam long id, @RequestParam String firstName, @RequestParam String lastName,
                                   @RequestParam String phoneNumber, @RequestParam String address1, @RequestParam(defaultValue="") String address2,
                                   @RequestParam String city, @RequestParam String state, @RequestParam int zipCode,
                                   @RequestParam String email, @RequestParam long acctNumber, @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate installDate, @RequestParam @DateTimeFormat(iso = ISO.TIME) LocalTime installTime,
                                   @RequestParam(defaultValue="false") boolean psuPhone, @RequestParam(defaultValue="false") boolean psuInternet, @RequestParam(defaultValue="false") boolean psuTV,
                                   @RequestParam String saleLocation, @RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dateOfSale, @RequestParam(defaultValue="false") boolean ezConnect,
                                   @RequestParam(defaultValue="") String notes,
                                   RedirectAttributes flashScope) {

        Customer editedCustomer = new Customer();
        editedCustomer.setId(id);
        editedCustomer.setFirstName(firstName);
        editedCustomer.setLastName(lastName);
        editedCustomer.setPhoneNumber(phoneNumber);
        editedCustomer.setFmtPhoneNumber(phoneNumber);
        editedCustomer.setAddress1(address1);
        editedCustomer.setAddress2(address2);
        editedCustomer.setCity(city);
        editedCustomer.setState(state);
        editedCustomer.setZipCode(zipCode);
        editedCustomer.setEmail(email);
        editedCustomer.setAcctNumber(acctNumber);
        editedCustomer.setInstallDate(installDate);
        editedCustomer.setInstallTime(installTime);
        editedCustomer.setPsuPhone(psuPhone);
        editedCustomer.setPsuInternet(psuInternet);
        editedCustomer.setPsuTV(psuTV);
        editedCustomer.setSaleLocation(saleLocation);
        editedCustomer.setDateOfSale(dateOfSale);
        editedCustomer.setEzConnect(ezConnect);
        editedCustomer.setNotes(notes);

        customerDao.updateCustomer(editedCustomer);

        flashScope.addFlashAttribute("message", firstName + " " + lastName + "'s information has been updated.");

        return "redirect:/customerSearchForm";
    }

}


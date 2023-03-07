package com.vet.clinic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vet.clinic.dao.StaffDAO;
import com.vet.clinic.dto.StaffDTO;

@Service
public class StaffService {

	
	@Autowired
	private StaffDAO staffDAO;
	
	public List<StaffDTO> staffList() {
		return staffDAO.staffList();
	}





}

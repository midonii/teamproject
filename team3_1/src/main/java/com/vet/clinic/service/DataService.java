package com.vet.clinic.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vet.clinic.dao.DataDAO;
import com.vet.clinic.dto.MedicalDTO;

@Service
public class DataService {

	@Autowired
	private DataDAO dataDAO;



	public List<MedicalDTO> medicineList() {
		return dataDAO.medicineList();
	}

	public List<MedicalDTO> inspectionList() {
		return dataDAO.inspectionList();
	}

	public int mediAdd(Map<String, Object> map) {
		return dataDAO.mediAdd(map);
	}

	public List<MedicalDTO> vaccineList() {
		return dataDAO.vaccineList();
	}

	public int vaccineAdd(Map<String, Object> map) {
		
		return dataDAO.vaccineAdd(map);
	}

	public List<MedicalDTO> petTypeList() {
		return dataDAO.petTypeList();
	}

	public int petTypeAdd(Map<String, Object> map) {
		return dataDAO.petTypeAdd(map);
	}

	public int petTypeDel(int type_no) {
		return dataDAO.petTypeDel(type_no);
	}


}

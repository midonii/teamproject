package com.vet.clinic.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.vet.clinic.dto.MedicalDTO;

@Repository
@Mapper
public interface DataDAO {


	List<MedicalDTO> medicineList();

	List<MedicalDTO> inspectionList();

	int mediAdd(Map<String, Object> map);

	List<MedicalDTO> vaccineList();

	int vaccineAdd(Map<String, Object> map);

	List<MedicalDTO> petTypeList();

	int petTypeAdd(Map<String, Object> map);

	int petTypeDel(int type_no);

	
}

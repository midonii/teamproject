package com.vet.clinic.dto;

import lombok.Data;

@Data
public class MedicalDTO {

	private int medical_no, vac_no;
	private String medical_category, medical_name, medical_price, 
					vac_name, vac_cycleY, vac_cycleM, vac_cycleW, vac_price;
}

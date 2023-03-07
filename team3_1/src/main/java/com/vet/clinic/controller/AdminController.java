package com.vet.clinic.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.vet.clinic.dto.MedicalDTO;
import com.vet.clinic.dto.StaffDTO;
import com.vet.clinic.service.DataService;
import com.vet.clinic.service.StaffService;

@Controller
public class AdminController {

	@Autowired
	private StaffService staffService;

	@Autowired
	private DataService dataService;

	@GetMapping("/staffList")
	public ModelAndView staffList() {
		ModelAndView mv = new ModelAndView("/admin/staffList");

		List<StaffDTO> staffList = staffService.staffList();

		mv.addObject("staffList", staffList);
		return mv;
	}

	@GetMapping("/medicine")
	public ModelAndView medicineList() {
		ModelAndView mv = new ModelAndView("/admin/medicineList");
		List<MedicalDTO> medicineList = dataService.medicineList();
		mv.addObject("medicineList", medicineList);
		return mv;
	}

	@PostMapping("/medicineAdd")
	public String medicalAdd(@RequestParam Map<String, Object> map) {

		System.err.println(map);

		int result = dataService.mediAdd(map);
		System.err.println(result);

		return "redirect:/medicine";
	}

	@GetMapping("/inspection")
	public ModelAndView inspectionList() {
		ModelAndView mv = new ModelAndView("/admin/inspectionList");
		List<MedicalDTO> inspectionList = dataService.inspectionList();
		mv.addObject("inspectionList", inspectionList);
		return mv;
	}

	@PostMapping("/inspectionAdd")
	public String inspectionAdd(@RequestParam Map<String, Object> map) {

		System.err.println(map);

		int result = dataService.mediAdd(map);
		System.err.println(result);

		return "redirect:/inspection";
	}

	@GetMapping("/vaccine")
	public ModelAndView vaccineList() {
		ModelAndView mv = new ModelAndView("/admin/vaccineList");
		List<MedicalDTO> vaccineList = dataService.vaccineList();
		mv.addObject("vaccineList", vaccineList);
		return mv;
	}

	@PostMapping("/vaccineAdd")
	public String vaccineAdd(@RequestParam Map<String, Object> map) {

		System.err.println(map);

		int result = dataService.vaccineAdd(map);
		System.err.println(result);

		return "redirect:/vaccine";
	}

	@GetMapping("/petType")
	public ModelAndView petTypeList() {
		ModelAndView mv = new ModelAndView("/admin/petTypeList");
		List<MedicalDTO> petTypeList = dataService.petTypeList();
		mv.addObject("petTypeList", petTypeList);
		return mv;
	}

	@PostMapping("/petTypeAdd")
	public String petTypeAdd(@RequestParam Map<String, Object> map) {

		System.err.println(map);

		int result = dataService.petTypeAdd(map);
		System.err.println(result);

		return "redirect:/petType";
	}

	@GetMapping("/petTypeDel")
	public String petTypeDel(@RequestParam(name = "type_no") int type_no) {
		int result = dataService.petTypeDel(type_no);
		return "redirect:/petType";
	}
}

package com.gura.project.file.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.gura.project.file.dto.FileDto;

public interface FileService {
	public void insert(HttpServletRequest request, FileDto dto);
	public ModelAndView getList(HttpServletRequest request);
	public void delete(HttpServletRequest request, int num);
	public ModelAndView getData(int num);		
}

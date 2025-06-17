package kkpl.service;


import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.cj.exceptions.DataReadException;

import jakarta.servlet.http.HttpServletRequest;
import kkpl.model.ColDef;
import kkpl.model.ReportData;
import kkpl.model.ReportRequest;
import kkpl.repo.DataRepository;

@Service
public class ReportDataService {
	
	@Autowired
	private ResourceLoader resourceLoader;
	@Autowired
	private DataRepository dataRepository;
	@Autowired
	private ObjectMapper objectMapper;

	
	public ReportData getReportData(ReportRequest reportRequest) {
		try {
			String reportName = reportRequest.getReportName();
//			Resource resource = resourceLoader.getResource("classpath:" + reportName + ".json");
//			InputStream inputStream = resource.getInputStream();
//			ReportData reportData = objectMapper.readValue(inputStream, ReportData.class);
			ReportData reportData = new ReportData();
			List<ColDef> colDefs = new ArrayList<>();
			List<Map<String, Object>> colList = dataRepository.getColDefs(reportName);
			for(Map<String, Object> col : colList) {
				if(!col.get("COLUMN_NAME").toString().equalsIgnoreCase("id")) {
					ColDef colDef = new ColDef();
					colDef.setField(col.get("COLUMN_NAME").toString());
					colDef.setType(col.get("DATA_TYPE").toString());
					colDef.setFilter(true);
					if(col.get("COLUMN_NAME").toString().equalsIgnoreCase("updatedBy") || col.get("COLUMN_NAME").toString().equalsIgnoreCase("updatedAt")) {
						colDef.setEditable(false);
					} else {
						colDef.setEditable(true);
					}
					if(col.get("DATA_TYPE").toString().equalsIgnoreCase("varchar") || col.get("DATA_TYPE").toString().equalsIgnoreCase("datetime")) {
						colDef.setEnableRowGroup(true);
					} else if(col.get("DATA_TYPE").toString().equalsIgnoreCase("int") || col.get("DATA_TYPE").toString().equalsIgnoreCase("decimal")) {
						colDef.setEnableValue(true);
					}
					colDefs.add(colDef);
				}
			}
			List<Map<String, Object>> dataList = dataRepository.getDataList(reportName);
			reportData.setRowData(dataList);
			reportData.setColDefs(colDefs);
			return reportData;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public ReportData updateReportData(ReportRequest reportRequest, String username) {
		try {
			ReportData reportData= new ReportData();
			dataRepository.updateData(reportRequest.getReportName(), reportRequest.getData(), username);
			List<Map<String, Object>> dataList = dataRepository.getDataList(reportRequest.getReportName());
			reportData.setRowData(dataList);
			return reportData;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	public List<String> getReports() {
		return dataRepository.getReports();
	}
	
	public String getUserName(HttpServletRequest httpRequest) {
		String authHeaderValue = httpRequest.getHeader("authorization");
    	if(authHeaderValue != null) {
    		String header = authHeaderValue.replace("Basic ", "");
    		String username = new String(new Base64().decode(header)).split(":",2)[0];
    		return username;
    	} else {
    		return null;
    	}
	}
	
}

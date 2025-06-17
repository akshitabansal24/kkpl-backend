package kkpl.controller;

import java.util.List;
import java.util.Set;

import org.apache.catalina.util.StringUtil;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpServletRequest;
import kkpl.model.ReportData;
import kkpl.model.ReportRequest;
import kkpl.service.ReportDataService;

@RestController
@CrossOrigin(origins = "*")
public class RequestController {

	@Autowired
    private ReportDataService reportDataService;

    @RequestMapping(value = "reportData", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.POST)
    @ResponseBody
    public ReportData reportData(@RequestBody ReportRequest reportRequest, HttpServletRequest request) {
//        repo.save(user);
//        return "User added!";
    	return reportDataService.getReportData(reportRequest);
    }
    
    @RequestMapping(value = "updateReportData", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.POST)
    @ResponseBody
    public ReportData updateReportData(@RequestBody ReportRequest reportRequest, HttpServletRequest httpRequest) {
//        repo.save(user);
//        return "User added!";
    	String username = reportDataService.getUserName(httpRequest);
    	return reportDataService.updateReportData(reportRequest, username);
    }
    
    @RequestMapping(value = "getReports", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.GET)
    @ResponseBody
    public List<String> getReports(HttpServletRequest request) {
//        repo.save(user);
//        return "User added!";
//    	System.out.println(request.getHeader("authorization"));
    	return reportDataService.getReports();
    }
}

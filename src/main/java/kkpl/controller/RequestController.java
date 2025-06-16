package kkpl.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

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
    public ReportData reportData(@RequestBody ReportRequest reportRequest) {
//        repo.save(user);
//        return "User added!";
    	return reportDataService.getReportData(reportRequest);
    }
    
    @RequestMapping(value = "updateReportData", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.POST)
    @ResponseBody
    public ReportData updateReportData(@RequestBody ReportRequest reportRequest) {
//        repo.save(user);
//        return "User added!";
    	return reportDataService.updateReportData(reportRequest);
    }
    
    @RequestMapping(value = "getReports", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.GET)
    @ResponseBody
    public List<String> getReports() {
//        repo.save(user);
//        return "User added!";
    	return reportDataService.getReports();
    }

}

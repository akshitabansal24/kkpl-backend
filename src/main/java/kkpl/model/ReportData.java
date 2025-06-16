package kkpl.model;

import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportData {
	@JsonProperty
	private List<ColDef> colDefs;
	@JsonProperty
	private List<Map<String, Object>> rowData;
}

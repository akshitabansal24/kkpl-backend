package kkpl.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ColDef {
	
	@JsonProperty
	private String field;
	@JsonProperty
	private String headerName;
	@JsonProperty
	private String type;
	@JsonProperty
	private Boolean filter;
	@JsonProperty
	private Boolean editable;
	@JsonProperty
	private Boolean enableRowGroup;
	@JsonProperty
	private Boolean enableValue;
	@JsonProperty
	private String cellStyle;	
}

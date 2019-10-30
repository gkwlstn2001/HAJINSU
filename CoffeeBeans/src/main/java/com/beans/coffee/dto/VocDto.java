package com.beans.coffee.dto;

public class VocDto {
	private String VOCID;
	private String EMAIL;
	private String VOCWRITEDATE;
	private String VOCVIEWSCOUNT;
	private String TITLE;
	private String CONTENT;
	
	public String getVOCID() {
		return VOCID;
	}
	public void setVOCID(String vOCID) {
		VOCID = vOCID;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getVOCWRITEDATE() {
		return VOCWRITEDATE;
	}
	public void setVOCWRITEDATE(String vOCWRITEDATE) {
		VOCWRITEDATE = vOCWRITEDATE;
	}
	public String getVOCVIEWSCOUNT() {
		return VOCVIEWSCOUNT;
	}
	public void setVOCVIEWSCOUNT(String vOCVIEWSCOUNT) {
		VOCVIEWSCOUNT = vOCVIEWSCOUNT;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	@Override
	public String toString() {
		return "VocDto [VOCID=" + VOCID + ", EMAIL=" + EMAIL + ", VOCWRITEDATE=" + VOCWRITEDATE + ", VOCVIEWSCOUNT="
				+ VOCVIEWSCOUNT + ", TITLE=" + TITLE + ", CONTENT=" + CONTENT + "]";
	}
}

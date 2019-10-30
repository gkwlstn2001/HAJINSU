package com.beans.coffee.dto;

public class BbsDto {
	private String ADMIN;
	private String REGION;
	private String SCORE;
	private String BBSID;
	private String WRITEDATE;
	private String VIEWSCOUNT;
	private String EMAIL;
	private String TITLE;
	private String CONTENT;
	
	public String getADMIN() {
		return ADMIN;
	}
	public void setADMIN(String aDMIN) {
		ADMIN = aDMIN;
	}
	public String getREGION() {
		return REGION;
	}
	public void setREGION(String rEGION) {
		REGION = rEGION;
	}
	public String getSCORE() {
		return SCORE;
	}
	public void setSCORE(String sCORE) {
		SCORE = sCORE;
	}
	public String getBBSID() {
		return BBSID;
	}
	public void setBBSID(String bBSID) {
		BBSID = bBSID;
	}
	public String getWRITEDATE() {
		return WRITEDATE;
	}
	public void setWRITEDATE(String wRITEDATE) {
		WRITEDATE = wRITEDATE;
	}
	public String getVIEWSCOUNT() {
		return VIEWSCOUNT;
	}
	public void setVIEWSCOUNT(String vIEWSCOUNT) {
		VIEWSCOUNT = vIEWSCOUNT;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
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
		return "BbsDto [ADMIN=" + ADMIN + ", REGION=" + REGION + ", SCORE=" + SCORE + ", BBSID=" + BBSID
				+ ", WRITEDATE=" + WRITEDATE + ", VIEWSCOUNT=" + VIEWSCOUNT + ", EMAIL=" + EMAIL + ", TITLE=" + TITLE
				+ ", CONTENT=" + CONTENT + "]";
	}
}

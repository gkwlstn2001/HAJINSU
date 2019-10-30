package com.beans.coffee.dto;

public class VocFileDto {
	private String VOCFILEID;
	private String VOCID;
	private String VOCORIGINALFILENAME;
	private String VOCSAVEFILENAME;
	
	public String getVOCFILEID() {
		return VOCFILEID;
	}
	public void setVOCFILEID(String vOCFILEID) {
		VOCFILEID = vOCFILEID;
	}
	public String getVOCID() {
		return VOCID;
	}
	public void setVOCID(String vOCID) {
		VOCID = vOCID;
	}
	public String getVOCORIGINALFILENAME() {
		return VOCORIGINALFILENAME;
	}
	public void setVOCORIGINALFILENAME(String vOCORIGINALFILENAME) {
		VOCORIGINALFILENAME = vOCORIGINALFILENAME;
	}
	public String getVOCSAVEFILENAME() {
		return VOCSAVEFILENAME;
	}
	public void setVOCSAVEFILENAME(String vOCSAVEFILENAME) {
		VOCSAVEFILENAME = vOCSAVEFILENAME;
	}
	@Override
	public String toString() {
		return "VocFileDto [VOCFILEID=" + VOCFILEID + ", VOCID=" + VOCID + ", VOCORIGINALFILENAME="
				+ VOCORIGINALFILENAME + ", VOCSAVEFILENAME=" + VOCSAVEFILENAME + "]";
	}
}

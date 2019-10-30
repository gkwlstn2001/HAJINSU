package com.beans.coffee.dto;

public class BbsFileDto {
	private String FILEID;
	private String BBSID;
	private String ORIGINALFILENAME;
	private String SAVEFILENAME;
	
	public String getFILEID() {
		return FILEID;
	}
	public void setFILEID(String fILEID) {
		FILEID = fILEID;
	}
	public String getBBSID() {
		return BBSID;
	}
	public void setBBSID(String bBSID) {
		BBSID = bBSID;
	}
	public String getORIGINALFILENAME() {
		return ORIGINALFILENAME;
	}
	public void setORIGINALFILENAME(String oRIGINALFILENAME) {
		ORIGINALFILENAME = oRIGINALFILENAME;
	}
	public String getSAVEFILENAME() {
		return SAVEFILENAME;
	}
	public void setSAVEFILENAME(String sAVEFILENAME) {
		SAVEFILENAME = sAVEFILENAME;
	}
	@Override
	public String toString() {
		return "BbsFileDto [FILEID=" + FILEID + ", BBSID=" + BBSID + ", ORIGINALFILENAME=" + ORIGINALFILENAME
				+ ", SAVEFILENAME=" + SAVEFILENAME + "]";
	}
}

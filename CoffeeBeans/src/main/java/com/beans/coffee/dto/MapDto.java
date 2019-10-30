package com.beans.coffee.dto;

public class MapDto {
	private String MAPID;
	private String BBSID;
	private String LATITUDE;
	private String LONGITUDE;
	
	public String getMAPID() {
		return MAPID;
	}
	public void setMAPID(String mAPID) {
		MAPID = mAPID;
	}
	public String getBBSID() {
		return BBSID;
	}
	public void setBBSID(String bBSID) {
		BBSID = bBSID;
	}
	public String getLATITUDE() {
		return LATITUDE;
	}
	public void setLATITUDE(String lATITUDE) {
		LATITUDE = lATITUDE;
	}
	public String getLONGITUDE() {
		return LONGITUDE;
	}
	public void setLONGITUDE(String lONGITUDE) {
		LONGITUDE = lONGITUDE;
	}
	@Override
	public String toString() {
		return "MapDto [MAPID=" + MAPID + ", BBSID=" + BBSID + ", LATITUDE=" + LATITUDE + ", LONGITUDE=" + LONGITUDE
				+ "]";
	}
}

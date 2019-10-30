package com.beans.coffee.dto;

public class CommentsDto {
	private String COMMENTSID;
	private String BBSID;
	private String EMAIL;
	private String COMMENTS;
	private String COMMENTSDATE;
	
	public String getCOMMENTSID() {
		return COMMENTSID;
	}
	public void setCOMMENTSID(String cOMMENTSID) {
		COMMENTSID = cOMMENTSID;
	}
	public String getBBSID() {
		return BBSID;
	}
	public void setBBSID(String bBSID) {
		BBSID = bBSID;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getCOMMENTS() {
		return COMMENTS;
	}
	public void setCOMMENTS(String cOMMENTS) {
		COMMENTS = cOMMENTS;
	}
	public String getCOMMENTSDATE() {
		return COMMENTSDATE;
	}
	public void setCOMMENTSDATE(String cOMMENTSDATE) {
		COMMENTSDATE = cOMMENTSDATE;
	}
	@Override
	public String toString() {
		return "CommentsDto [COMMENTSID=" + COMMENTSID + ", BBSID=" + BBSID + ", EMAIL=" + EMAIL + ", COMMENTS="
				+ COMMENTS + ", COMMENTSDATE=" + COMMENTSDATE + "]";
	}
}

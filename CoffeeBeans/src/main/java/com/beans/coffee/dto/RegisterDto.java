package com.beans.coffee.dto;

public class RegisterDto {
	private String EMAIL;
	private String PASSWORD;
	private String FULLNAME;
	private String ADDRESS;
	private String PHONENUMBER;
	
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getFULLNAME() {
		return FULLNAME;
	}
	public void setFULLNAME(String fULLNAME) {
		FULLNAME = fULLNAME;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	public String getPHONENUMBER() {
		return PHONENUMBER;
	}
	public void setPHONENUMBER(String pHONENUMBER) {
		PHONENUMBER = pHONENUMBER;
	}
	@Override
	public String toString() {
		return "RegisterDto [EMAIL=" + EMAIL + ", PASSWORD=" + PASSWORD + ", FULLNAME=" + FULLNAME + ", ADDRESS="
				+ ADDRESS + ", PHONENUMBER=" + PHONENUMBER + "]";
	}
}
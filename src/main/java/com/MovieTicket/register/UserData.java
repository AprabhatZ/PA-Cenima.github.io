package com.MovieTicket.register;

public class UserData {
	
	private String uemail;
    private String uname;
    private String contact;
    private String upwd;
    private String DOB;
    
    
    public UserData() {
        // Default constructor
    }
    public String getuname() {
        return uname;
    }
    
    public void setuname(String uname) {
        this.uname = uname;
    }
    public String getuemail() {
        return uemail;
    }
    public void setuemail(String uemail) {
        this.uemail = uemail;
    }
    
    public void setcontact(String contact) {
        this.contact = contact;
    }
    public String getcontact() {
        return contact;
    }
    
    public void setupwd(String upwd) {
        this.upwd = upwd;
    }
    public String getupwd() {
        return upwd;
    }
    public void setDOB(String DOB) {
        this.DOB = DOB;
    }
    public String getDOB() {
        return DOB;
    }

}

package com.MovieTicket.Movies;

public class MovieData {
	 	private String grade;
	    private String title;
	    private String image;
	    private String ad;
	    private String detail;
	    
	    
	    public MovieData() {
	        // Default constructor
	    }
	    public String getTitle() {
	        return title;
	    }
	    
	    public void setTitle(String title) {
	        this.title = title;
	    }
	    public String getGrade() {
	        return grade;
	    }
	    public void setGrade(String grade) {
	        this.grade = grade;
	    }
	    
	    public void setImage(String image) {
	        this.image = image;
	    }
	    public String getImage() {
	        return image;
	    }
	    
	    public void setAd(String ad) {
	        this.ad = ad;
	    }
	    public String getAd() {
	        return ad;
	    }
	    public void setDetail(String detail) {
	        this.detail = detail;
	    }
	    public String getDetail() {
	        return detail;
	    }
}

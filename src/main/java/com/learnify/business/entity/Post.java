package com.learnify.business.entity;



import java.sql.*;

public class Post {

    private int pid;
    private String pTitle;
    private String pShortDescription;
    private String pDescription;
    private String pPic;
    private Timestamp pDate;
    private int catId;
    private int userId;
    
    
    private String pAbout;
    private String pInstructor;
    private String pNote;
    
    private String week1;
    private String week2;
    private String week3;
    private String week4;

    public Post() {
    }

    public Post(int pid, String pTitle, String pShortDescription, String pDescription, String pPic, Timestamp pDate, int catId,String pAbout,String pInstructor,String pNote, String week1,String week2,String week3,String week4) {
        this.pid = pid;
        this.pTitle = pTitle;
        this.pShortDescription = pShortDescription;
        this.pDescription = pDescription;
        this.pPic = pPic;
        this.pDate = pDate;
        this.catId = catId;
//        this.userId = userId;
        this.pAbout = pAbout;
        this.pInstructor = pInstructor;
        this.pNote = pNote;
        
        this.week1 = week1;
        this.week2 = week2;
        this.week3 = week3;
        this.week4 = week4;
        
        
    }

    public Post(String pTitle, String pShortDescription, String pDescription, String pPic, Timestamp pDate, int catId,String pAbout,String pInstructor,String pNote,String week1,String week2,String week3,String week4) {
        this.pTitle = pTitle;
        this.pShortDescription = pShortDescription;
        this.pDescription = pDescription;
        this.pPic = pPic;
        this.pDate = pDate;
        this.catId = catId;
//        this.userId = userId;
        this.pAbout = pAbout;
        this.pInstructor = pInstructor;
        this.pNote = pNote;
        
        this.week1 = week1;
        this.week2 = week2;
        this.week3 = week3;
        this.week4 = week4;
        
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getpTitle() {
        return pTitle;
    }

    public void setpTitle(String pTitle) {
        this.pTitle = pTitle;
    }

    public String getpShortDescription() {
        return pShortDescription;
    }

    public void setpShortDescription(String pShortDescription) {
        this.pShortDescription = pShortDescription;
    }

    public String getpDescription() {
        return pDescription;
    }

    public void setpDescription(String pDescription) {
        this.pDescription = pDescription;
    }

    public String getpPic() {
        return pPic;
    }

    public void setpPic(String pPic) {
        this.pPic = pPic;
    }

    public Timestamp getpDate() {
        return pDate;
    }

    public void setpDate(Timestamp pDate) {
        this.pDate = pDate;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    public String getpAbout() {
		return pAbout;
	}

    public void setpAbout(String pAbout) {
		this.pAbout = pAbout;
	}
    
    public String getpInstructor() {
		return pInstructor;
	}
    public void setpInstructor(String pInstructor) {
		this.pInstructor = pInstructor;
	}
    
    public String getpNote() {
		return pNote;
	}
    public void setpNote(String pNote) {
		this.pNote = pNote;
	}
    
    public String getWeek1() {
		return week1;
	}
    public void setWeek1(String week1) {
		this.week1 = week1;
	}
    
    public String getWeek2() {
		return week2;
	}
    public void setWeek2(String week2) {
		this.week2 = week2;
	}
    
    public String getWeek3() {
		return week3;
	}
    public void setWeek3(String week3) {
		this.week3 = week3;
	}
    
    public String getWeek4() {
		return week4;
	}
    public void setWeek4(String week4) {
		this.week4 = week4;
	}
}
package univ;

public class UNIVDATA {
    Long univID = 0l;
	String univName = null, univType = null, univLocation = null,
			univEmail = null;
	Long  totalStudent = 0l, totalTeacher = 0l,
			totalFTeacher = 0l, totalFaculty = 0l, totalDept = 0l,
			totalHall = 0l;
	
	public UNIVDATA(Long univID, String univName, String univType, String univLocation, String univEmail,
			Long totalStudent, Long totalTeacher, Long totalFTeacher, Long totalFaculty, Long totalDept,
			Long totalHall) {
		this.univID = univID;
		this.univName = univName;
		this.univType = univType;
		this.univLocation = univLocation;
		this.univEmail = univEmail;
		this.totalStudent = totalStudent;
		this.totalTeacher = totalTeacher;
		this.totalFTeacher = totalFTeacher;
		this.totalFaculty = totalFaculty;
		this.totalDept = totalDept;
		this.totalHall = totalHall;
	}
	public String getUnivName() {
		return univName;
	}
	public String getUnivType() {
		return univType;
	}
	public String getUnivLocation() {
		return univLocation;
	}
	public String getUnivEmail() {
		return univEmail;
	}
	public Long getUnivID() {
		return univID;
	}
	public Long getTotalStudent() {
		return totalStudent;
	}
	public Long getTotalTeacher() {
		return totalTeacher;
	}
	public Long getTotalFTeacher() {
		return totalFTeacher;
	}
	public Long getTotalFaculty() {
		return totalFaculty;
	}
	public Long getTotalDept() {
		return totalDept;
	}
	public Long getTotalHall() {
		return totalHall;
	}
}

package category;

public class CATEGORY {
    public static Long studentCatg(Long totalStudent){
        if(totalStudent<3000){
            return 3l;
        }else if(totalStudent<6000){
            return 6l;
        }else {
            return 10l;
        }
    }
    public static Long teacherCatg(Long totalTeacher){
        if(totalTeacher<100){
            return 3l;
        }else if(totalTeacher<200){
            return 6l;
        }else {
            return 10l;
        }
    }
    public static Long fTeacherCatg(Long totalFTeacher){
        if(totalFTeacher<20){
            return 3l;
        }else if(totalFTeacher<40){
            return 6l;
        }else {
            return 10l;
        }
    }
    public static Long TvsFV(Long totalTeacher,Long totalFTeacher){
        Long psg = (totalFTeacher/totalTeacher)*100;
        if(psg<20){
            return 3l;
        }else if(psg<40){
            return 6l;
        }else {
            return 10l;
        }
    }
    public static Long facultyCatg(Long totalFaculty){
        if(totalFaculty<5){
            return 3l;
        }else if(totalFaculty<8){
            return 6l;
        }else {
            return 10l;
        }
    }
    public static Long deptCatg(Long totalDept){
        if(totalDept<20){
            return 3l;
        }else if(totalDept<30){
            return 6l;
        }else {
            return 10l;
        }
    }
    public static Long hallCatg(Long totalHall){
        if(totalHall<5){
            return 3l;
        }else if(totalHall<8){
            return 6l;
        }else {
            return 10l;
        }
    }
}

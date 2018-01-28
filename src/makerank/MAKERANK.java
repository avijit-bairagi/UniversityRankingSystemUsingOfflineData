package makerank;

import category.CATEGORY;
import database.DATABASE_CONNECTION;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MAKERANK {
    public static void makeRankList(){
        Long univID = 00l, point = 00l , awardCount = 0l , thesisCount = 0l;
        String univName = null, univType = null, univLocation = null,
                univEmail = null;
        Long  totalStudent = 0l, totalTeacher = 0l,
                totalFTeacher = 0l, totalFaculty = 0l, totalDept = 0l,
                totalHall = 0l;
        try{
            Connection con = DATABASE_CONNECTION.get_connection();

            //delete previous data
            PreparedStatement deleteStatement = con.prepareStatement("DELETE FROM POINT");
            deleteStatement.execute();

            //get data from univ
            PreparedStatement univStatement = con.prepareStatement("SELECT * FROM university ORDER BY UNIV_ID");
            ResultSet univSet = univStatement.executeQuery();
            while (univSet.next()){
                univID = univSet.getLong(1);

                totalStudent = univSet.getLong(5);
                totalTeacher = univSet.getLong(6);
                totalFTeacher = univSet.getLong(7);
                totalFaculty = univSet.getLong(8);
                totalDept = univSet.getLong(9);
                totalHall = univSet.getLong(10);

//                System.out.println(univID);
//                System.out.println(totalStudent);
//                System.out.println(totalTeacher);
//                System.out.println(totalFTeacher);
//                System.out.println(totalFaculty);
//                System.out.println(totalDept);
//                System.out.println(totalHall);
                point = CATEGORY.studentCatg(totalStudent)+CATEGORY.teacherCatg(totalTeacher)+
                        CATEGORY.fTeacherCatg(totalFTeacher)+CATEGORY.TvsFV(totalTeacher,totalFTeacher)+
                        CATEGORY.facultyCatg(totalFaculty)+CATEGORY.deptCatg(totalDept)+CATEGORY.hallCatg(totalHall);
                //get data from award
                PreparedStatement awardStatement = con.prepareStatement("select count(award_name) from award where univ_id =?");
                awardStatement.setLong(1,univID);
                ResultSet awardSet = awardStatement.executeQuery();
                if (awardSet.next()){
                    awardCount = awardSet.getLong(1);
                }
                point = point + awardCount*2;

                //get data from thesis
                PreparedStatement thesisStatement = con.prepareStatement("select count(thesis_name) from thesis where univ_id =?");
                thesisStatement.setLong(1,univID);
                ResultSet thesisSet = thesisStatement.executeQuery();
                if (thesisSet.next()){
                    thesisCount = thesisSet.getLong(1);
                }
                point = point + thesisCount*2;

                //insert to point
                PreparedStatement pointStatement = con.prepareStatement("INSERT INTO POINT VALUES(?,?)");
                pointStatement.setLong(1,univID);
                pointStatement.setLong(2,point);
                pointStatement.execute();

            }
            con.close();
        }catch (Exception e){
            System.out.println(e);
        }
    }
}

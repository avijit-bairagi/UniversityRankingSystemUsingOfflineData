package file2database;

import database.DATABASE_CONNECTION;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class MAKEDATA {
    public static void importData(){
        Long univID = 00l;
        String univName = null, univType = null, univLocation = null,
                univEmail = null;
        Long  totalStudent = 0l, totalTeacher = 0l,
                totalFTeacher = 0l, totalFaculty = 0l, totalDept = 0l,
                totalHall = 0l;
        try{
            Connection con = DATABASE_CONNECTION.get_connection();
            //delete previous data
            PreparedStatement deleteStatement1 = con.prepareStatement("DELETE FROM POINT");
            deleteStatement1.execute();
            PreparedStatement deleteStatement2 = con.prepareStatement("DELETE FROM UNIVERSITY");
            deleteStatement2.execute();
            PreparedStatement deleteStatement3 = con.prepareStatement("DELETE FROM THESIS");
            deleteStatement3.execute();
            PreparedStatement deleteStatement4 = con.prepareStatement("DELETE FROM AWARD");
            deleteStatement4.execute();



            String src = "C:\\Users\\OVI\\Desktop\\tama\\University\\";
            File file = new File(src);
            File[] files = file.listFiles();
            for(File temp :files){
                //univType
                univType = temp.getName();
                File newFile = new File(temp.getCanonicalPath());
                File[] newFileList = newFile.listFiles();
                for (File newTemp : newFileList){
                    //univName
                    univName = newTemp.getName();
                    univID++;
                    File newList = new File(newTemp.getAbsolutePath());
                    File[] newLists = newList.listFiles();
                    for(File finalFile : newLists){
                        String name = finalFile.getName();
                        if(name.contains("info")){
                            File lastFiles = new File(finalFile.getAbsolutePath());
                            File[] lastFile = lastFiles.listFiles();
                            for (File ff : lastFile){
                                String newSrc = ff.getAbsolutePath();
                                FileInputStream fstream = new FileInputStream(newSrc);
                                BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
                                String strLine;
                                System.out.println(univID);
                                System.out.println(univType);
                                System.out.println(univName);
                                String[] arr = new String[9];
                                int k=0;
                                while ((strLine = br.readLine()) != null){
                                    //System.out.println(strLine);
                                    arr[k++] = strLine;
                                }
                                univLocation = arr[0];
                                totalStudent = Long.parseLong(arr[1]);
                                totalTeacher = Long.parseLong(arr[2]);
                                totalFTeacher = Long.parseLong(arr[3]);
                                totalFaculty = Long.parseLong(arr[4]);
                                totalDept = Long.parseLong(arr[5]);
                                totalHall = Long.parseLong(arr[6]);
                                univEmail = arr[7];
                                System.out.println(univLocation);
                                System.out.println(totalStudent);
                                System.out.println(totalTeacher);
                                System.out.println(totalFTeacher);
                                System.out.println(totalFaculty);
                                System.out.println(totalDept);
                                System.out.println(totalHall);
                                System.out.println(univEmail);
                                PreparedStatement ps = con.prepareStatement("INSERT INTO UNIVERSITY VALUES(?,?,?,?,?,?,?,?,?,?,?)");
                                ps.setLong(1,univID);
                                ps.setString(2,univName);
                                ps.setString(3,univType);
                                ps.setString(4,univLocation);
                                ps.setLong(5,totalStudent);
                                ps.setLong(6,totalTeacher);
                                ps.setLong(7,totalFTeacher);
                                ps.setLong(8,totalFaculty);
                                ps.setLong(9,totalDept);
                                ps.setLong(10,totalHall);
                                ps.setString(11,univEmail);
                                ps.execute();
                            }
                        }
                        if(name.contains("extra")){
                            String s = finalFile.getAbsolutePath();
                            File file1 = new File(s);
                            File[] finalList = file1.listFiles();
                            for(File finalSrc : finalList){
                                if(finalSrc.getName().contains("Awards")){
                                    String newSrc = finalSrc.getAbsolutePath();
                                    FileInputStream fstream = new FileInputStream(newSrc);
                                    BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
                                    String strLine;
                                    System.out.println(univName);
                                    PreparedStatement ps = con.prepareStatement("INSERT INTO AWARD VALUES(?,?)");

                                    while ((strLine = br.readLine()) != null){
                                        System.out.println(strLine);
                                        //arr[k++] = strLine;
                                        ps.setLong(1,univID);
                                        ps.setString(2,strLine);
                                        ps.execute();
                                    }
                                }
                                if(finalSrc.getName().contains("Thesis")){
                                    String newSrc = finalSrc.getAbsolutePath();
                                    FileInputStream fstream = new FileInputStream(newSrc);
                                    BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
                                    String strLine;
                                    System.out.println(univName);
                                    PreparedStatement ps = con.prepareStatement("INSERT INTO THESIS VALUES(?,?)");

                                    while ((strLine = br.readLine()) != null){
                                        System.out.println(strLine);
                                        //arr[k++] = strLine;
                                        ps.setLong(1,univID);
                                        ps.setString(2,strLine);
                                        ps.execute();
                                    }
                                }
                            }
                        }
                    }
                }
            }
            con.close();
        }catch (Exception e){
            System.out.println(e);
        }

    }
}

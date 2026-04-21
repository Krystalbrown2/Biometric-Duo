import java.sql.*;  
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Scanner;

/*
 
 javac BiometricApp.java
 
 java -cp /home/codio/workspace/mysql-java-music/mysql-connector-java-8.0.13.jar:.: BiometricApp

*/

     
public class BiometricApp {  
    
    static Connection con;
    static Scanner sc;
    public static void main(String args[]){  
    
            sc = new Scanner(System.in);
            int option=0;
   
            try{  
  
                con=DriverManager.getConnection("jdbc:mysql://localhost/music?user=root");  
 
                Class.forName("com.mysql.cj.jdbc.Driver");  
 
                while (option != 4) {
      
    
                 System.out.println();
                 System.out.println("1. Employee Profile");
                 System.out.println("2. Record Attendance");
                 System.out.println("3. Burnout Risk Calculator");
                 System.out.println("4. Exit");
     
                 System.out.print("\nChoice : ");
        
                  option = sc.nextInt(); 
     
                 switch(option) {
        
                     case 1: employeeProfile();
                     break;
             
                     case 2: recordAttendance();
                     break;     

                     case 3: burnoutCalculator();
                     break;        
                 }
                        
                 }
                
            con.close();
        
            }catch(Exception e){ System.out.println(e);}
      }
    
public static void employeeProfile() {
    try{ 

        System.out.print("Enter employee ID: ");
        int id = sc.nextInt();
          
    
        while(rs.next()) {
        
            System.out.print(rs.getString("Enter First name: ") + " ");
            String FirstName = sc.nextLine();

            System.out.print(rs.getString("Enter Last name: ") + " ");
            String LastName = sc.nextLine();

            System.out.print(rs.getString("Enter Email: ") + " ");
            String Email = sc.nextLine();

            System.out.println(rs.getString("Enter Work title: ") + " ");
             String Worktitle = sc.nextLine();

            System.out.println();
            System.out.println("===== EMPLOYEE PROFILE =====");
            System.out.println("ID: " + id);
            System.out.println("First Name: " + firstname);
            System.out.println("Last Name: " + lastname);
            System.out.println("Email: " + email);
            System.out.println("Work Title: " + Worktitle);
            System.out.println("===============================");
        }
    
          
    }catch(Exception e){ System.out.println(e);}
    
  }  
    
public static void recordAttendance() {
      
     System.out.print("Enter id: ");
     int id = sc.nextInt();
      
      try {
          
        PreparedStatement stmt=con.prepareStatement("select * from musicians where id = ?");   
        stmt.setInt(1,id);
        
        ResultSet rs=stmt.executeQuery();  
    
        while(rs.next()) {
        
            System.out.print(rs.getString("id") + " ");
            System.out.print(rs.getString("firstname") + " ");
            System.out.print(rs.getString("lastname") + " ");
            System.out.println(rs.getString("born"));
    
        }
    
          
    } catch(Exception e){ System.out.println(e);}
    
  }  
}

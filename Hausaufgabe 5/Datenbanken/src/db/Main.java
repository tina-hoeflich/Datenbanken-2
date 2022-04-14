package db;

import java.sql.*;

public class Main {

   public static void main(String[] args)
   {
       String url = "jdbc:sqlite:identifier.sqlite";

       Connection con = null;
       try(Connection conn = DriverManager.getConnection(url)) {
           System.out.println("Erfolgreich mit Datenbank verbunden.");
           String query = "UPDATE personen SET Name='Beate' WHERE ID=2";
           Statement stmt = conn.createStatement();
           stmt.execute(query);
           stmt.close();
           query = "SELECT * FROM Books ORDER BY isbn";
           stmt = conn.createStatement();
           ResultSet rs = stmt.executeQuery(query);int columns = rs.getMetaData().getColumnCount();

           for(int i = 1; i<=columns; i++)
               System.out.print(String.format("%-50s", rs.getMetaData().getColumnLabel(i)));

           System.out.println();
           System.out.println("----------------------------------------------------------------");

           while(rs.next()) {
               for(int i = 1; i<=columns; i++)
                   System.out.print(String.format("%-50s", rs.getString(i)));
               System.out.println();
           }
           rs.close();
           stmt.close();
       } catch (SQLException e) {
           System.err.println(e.getMessage());       }
   }
}

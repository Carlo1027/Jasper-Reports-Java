package Controlador;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Carlo Castro
 */
public class mysqlConexion {

    //static String url="jdbc:db2://localhost:50000/ENVLOCAL";

    static String Usuario = "db2admin";
    static String Clave = "db2admin";

    public static Connection Conexion() throws SQLException {

        Connection con = null;
        try {

            Class.forName("com.ibm.db2.jcc.DB2Driver");
            String url = "jdbc:db2://localhost:50000/ENVLOCAL";
            con = DriverManager.getConnection(url, Usuario, Clave);

        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return con;
    }

    public static void CloseConnection(Connection con) {
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

}

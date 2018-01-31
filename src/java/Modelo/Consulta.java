package Modelo;

/**
 *
 * @author Carlo Castro
 */
import Controlador.Registro;
import Controlador.mysqlConexion;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Consulta {

    static String query;//esta variable contiene todas las consultas
    static Connection conexion = null;
    static Statement stm = null;
    static ResultSet rst = null;
    static PreparedStatement pstam = null;

    public static List<Registro> MostrarRegistro() {
        List<Registro> registro = new ArrayList<Registro>();
        try {
            query = "SELECT * FROM datos_digitacion ORDER BY serialdocu";
            conexion = mysqlConexion.Conexion();
            stm = conexion.createStatement();
            rst = stm.executeQuery(query);

            while (rst.next()) {
                Registro reg = new Registro(rst.getString("serialdocu").trim(), rst.getString("fechadocu").trim(), rst.getString("fechadocu1").trim(), rst.getInt("folios"), rst.getInt("rangoinf"), rst.getInt("rangosup"), rst.getInt("caja"), rst.getInt("paquete"),rst.getInt("iddato"));
                registro.add(reg);
            }
            conexion.close();
            return registro;
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public static boolean Insertar(Registro registro) {
        boolean respuesta = false;

        try {
            query = "INSERT INTO datos_digitacion (serialdocu,fechadocu,fechadocu1,folios,rangoinf,rangosup,caja,paquete) VALUES (?,?,?,?,?,?,?,?)";
            conexion = mysqlConexion.Conexion();
            pstam = conexion.prepareStatement(query);

            pstam.setString(1, registro.getSerialdocu());
            pstam.setString(2, registro.getFechadocu());
            pstam.setString(3, registro.getFechadocu1());
            pstam.setInt(4, registro.getFolios());
            pstam.setInt(5, registro.getRangoinf());
            pstam.setInt(6, registro.getRangosup());
            pstam.setInt(7, registro.getCaja());
            pstam.setInt(8, registro.getPaquete());
            pstam.executeUpdate();

            conexion.close();
            respuesta = true;

        } catch (SQLException ex) {
            Logger.getLogger(Consulta.class.getName()).log(Level.SEVERE, null, ex);
            respuesta = false;
        }
        return respuesta;
    }

    public static boolean Actualizar(Registro registro, int iddato) {
        boolean respuesta = false;

        try {
            query = "UPDATE datos_digitacion SET serialdocu='" + registro.getSerialdocu().trim() + "', fechadocu='" + registro.getFechadocu().trim() + "', fechadocu1='" + registro.getFechadocu1().trim() + "', folios=" + registro.getFolios() + ", rangoinf=" + registro.getRangoinf() + ", rangosup=" + registro.getRangosup() + ", caja=" + registro.getCaja() + ", paquete=" + registro.getPaquete() + " WHERE iddato=" + iddato + "";
            conexion = mysqlConexion.Conexion();
            stm = conexion.createStatement();
            stm.execute(query);

            conexion.close();
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(Consulta.class.getName()).log(Level.SEVERE, null, ex);
            respuesta = false;
        }
        return respuesta;
    }

    public static boolean Eliminar(int iddato) {
        boolean respuesta = false;

        try {
            query = "DELETE FROM datos_digitacion WHERE iddato=" + iddato + "";
            conexion = mysqlConexion.Conexion();
            stm = conexion.createStatement();
            stm.execute(query);

            conexion.close();
            respuesta = true;
        } catch (SQLException ex) {
            Logger.getLogger(Consulta.class.getName()).log(Level.SEVERE, null, ex);
            respuesta = false;
        }
        return respuesta;
    }

    public static ResultSet Combo() {
        try {
            query = "SELECT DISTINCT serialdocu FROM datos_digitacion ORDER BY serialdocu";
            conexion = mysqlConexion.Conexion();
            pstam = conexion.prepareStatement(query);
            rst = pstam.executeQuery();
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }
        return rst;
    }
}

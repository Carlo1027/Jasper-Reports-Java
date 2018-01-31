<%-- 
    Document   : excel
    Created on : 16/06/2016, 03:17:04 PM
    Author     : Carlo Castro
--%>

<%@page import="Modelo.Consulta"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            response.setHeader("Content-Disposition", "attachment; filename=datosCaratulas.xls");
            response.setContentType("application/vnd.ms-excel");
        %>
    </head>
    <body>
        <table style="table-layout: auto" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered rt cf" id="example" width="100%" height="100%">    
            <thead class="cf">
            <th width="18%">SERIE</th>
            <th width="17%">FECHA</th>
            <th width="17%">FECHA1</th>
            <th width="8%">FOLIOS</th>
            <th width="8%">DEL N°</th>
            <th width="8%">AL N°</th>
            <th width="8%">CAJA</th>
            <th width="8%">PAQUETE</th>           
        </thead>

        <tbody align="left">
            <%
                //Connection conexion=mysqlConexion.Conexion();
                //if(conexion!=null)out.println(conexion+" Conexion hecha\n");
                //else out.println("Error de conexion\n");
                List<Registro> registro = Consulta.MostrarRegistro();
                for (int i = 0; i < registro.size(); i++) {
            %>
            <tr>                                     
                <td width="18%"><%=registro.get(i).getSerialdocu().trim()%></td>
                <td width="17%"><%=registro.get(i).getFechadocu().trim()%></td>
                <td width="17%"><%=registro.get(i).getFechadocu1().trim()%></td>
                <td width="8%"><%=registro.get(i).getFolios()%></td>
                <td width="8%"><%=registro.get(i).getRangoinf()%></td>
                <td width="8%"><%=registro.get(i).getRangosup()%></td>
                <td width="8%"><%=registro.get(i).getCaja()%></td>
                <td width="8%"><%=registro.get(i).getPaquete()%></td>               
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    </body>
</html>

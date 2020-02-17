<%-- 
    Document   : index
    Created on : Dec 20, 2018, 6:37:33 PM
    Author     : sherif146
--%>

<%@page import="java.util.List"%>
<%@page import="entity.flighttype"%>
<%--<%@page import="java.util.List"%>
<%@page import="entity.Postrecord"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Air Line Reservation System - Nigeria </title>
        
<!--        <link rel="icon" href="img/nainja.jpg" type="image/x-icon"  />
        <link rel="shortcut icon" href="img/nainja.jpg" type="image/x-icon" />-->

        <link rel="stylesheet" type="text/css" href="boot.css"/>
    </head>
    <body style="background:#dddddd">
       <%@include file="userheader.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background:white">
                <h3 style="color:yellow;background-color:grey;padding:10px">.:. <%=ses.getAttribute("adminname")%>. Profile .:.</h3>
                <hr/>
                <%
                        int k = 1;
                        @SuppressWarnings("unchecked") 
                        List<String> results = (List<String>)ses.getAttribute("allinfo");
                        //System.out.println("EWW");
                        if (results != null) {%>
                        <table style="font-size:22px; font-weigth:bold;" class="table table-condensed table-responsive table-hover">
                            <thead >
                                <tr>
                                    <th COLSPAN="3"><H3>Profile Information !!</H3></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>USER ID </td>
                                    <td></td>
                                    <td><%=results.get(1)%></td>
                                </tr>
                                 <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                 <tr>
                                    <td>NAME </td>
                                    <td></td>
                                    <td><%=results.get(0)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>AGE </td>
                                    <td></td>
                                    <td><%=results.get(6)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>GENDER </td>
                                    <td></td>
                                    <td><%=results.get(5)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>PHONE N<U>O</U></td>
                                    <td></td>
                                    <td><%=results.get(3)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>EMAIL ADDRESS </td>
                                    <td></td>
                                    <td><%=results.get(4)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>CONTACT ADDRESS </td>
                                    <td></td>
                                    <td><%=results.get(2)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                 <tr>
                                    <td>CARD N<U>O</U> </td>
                                    <td></td>
                                    <td><%=results.get(7)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>SKY ALERT</td>
                                    <td></td>
                                    <td><%=results.get(8)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                            </tbody>
                        </table>
                            
                       <%}%>   

            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="background:white">
                 <%@include file="leftNav.jsp" %>
            </div>
        </div>
        <!-- close of container fluid in header file -->
    </div>
    </body>
    <%@include file="footer.jsp" %>
</html>

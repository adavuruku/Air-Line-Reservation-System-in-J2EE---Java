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
       <%@include file="header.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background:white">
                <h3 style="color:yellow;background-color:grey;padding:10px">.:. Flight Information .:.</h3>
                <hr/>
                <%
                        int k = 1;
                        @SuppressWarnings("unchecked") 
                        List results = (List)request.getAttribute("flightinfo");
                        //System.out.println("EWW");
                        if (results != null) {%>
                            <table style="font-size:22px; font-weigth:bold;" class="table table-bordered table-condensed table-responsive table-hover">
                            <thead >
                                <tr style="background-color: grey;color:yellow">
                                    <th style="background-color: grey;color:yellow" COLSPAN="2"><H3>Flight Current Information !!</H3></th>
                                </tr>
                            </thead>
                      
                            <tbody>
                                <tr>
                                    <td>Plane </td>
                                    <td><%=results.get(4)%></td>
                                </tr>
                                 <tr>
                                    <td COLSPAN="2"></td>
                                </tr>
                                <tr>
                                    <td>From </td>
                                    <td><%=results.get(0)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="2"></td>
                                </tr>
                                <tr>
                                    <td>DISTANCE / HOURS  </td>
                                    <td><%=results.get(17)%> KM / <%=results.get(18)%> HRS</td>
                                </tr>
                                <tr>
                                    <td COLSPAN="2"></td>
                                </tr>
                                <tr>
                                    <td>To </td>
                                    <td><%=results.get(1)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="2"></td>
                                </tr>
                                <tr>
                                    <td>DEPARTURE DATE / TIME  </td>
                                    <td><%=results.get(3)%> - <%=results.get(2)%>:59:00</td>
                               </tr>
                                <tr>
                                    <td COLSPAN="2"></td>
                                </tr>
                            </tbody>
                            </table>
                            <table style="font-size:22px; font-weigth:bold;" class="table table-bordered table-condensed table-responsive table-hover">
                            <thead >
                                <tr style="background-color: grey;color:yellow">
                                    <th>CLASS</th>
                                    <th>AVAILABLE SEAT</th>
                                    <th>COST (N)</th>
                                </tr>
                            </thead>
                            <tbody>   
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>Business Class </td>
                                    <td><%=results.get(5)%></td>
                                    <td><%=results.get(6)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>First Class </td>
                                    <td><%=results.get(7)%></td>
                                    <td><%=results.get(8)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                 <tr>
                                    <td>Smoking Class</td>
                                    <td><%=results.get(9)%></td>
                                    <td><%=results.get(10)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>Non-Smoking Class</td>
                                    <td><%=results.get(11)%></td>
                                    <td><%=results.get(12)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>Club Class</td>
                                    <td><%=results.get(13)%></td>
                                    <td><%=results.get(14)%></td>
                                </tr>
                                <tr>
                                    <td COLSPAN="3"></td>
                                </tr>
                                <tr>
                                    <td>Regular Class</td>
                                    <td><%=results.get(15)%></td>
                                    <td><%=results.get(16)%></td>
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

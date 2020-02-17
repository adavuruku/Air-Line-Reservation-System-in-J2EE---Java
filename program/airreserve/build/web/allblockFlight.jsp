<%-- 
    Document   : index
    Created on : Dec 20, 2018, 6:37:33 PM
    Author     : sherif146
--%>



<%@page import="entity.blockconfirm"%>
<%@page import="entity.flightsearch"%>
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
       <link rel="stylesheet" type="text/css" href="bootstrap.min.css"/>
      
    </head>
    <body style="background:#dddddd">
       <%@include file="userheader.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9" style="background:white">
                
                <div class="col-xs-12">
                    <h3 style="color:yellow;background-color:grey;padding:10px">.:. ALL BLOCKED FLIGHTS .:.</h3>
                    <%
                        int k = 1;
                        @SuppressWarnings("unchecked") 
                        List<blockconfirm> results = (List<blockconfirm>)request.getAttribute("allblock");
   
                        if (results != null) {%>
                            <table style="font-size:22px; font-weigth:bold;" class="table table-bordered table-condensed table-responsive table-hover">
                            <thead >
                                <tr style="background-color: grey;color:yellow">
                                    <th>SNo.</th>
                                    <th>Origin City</th>
                                    <th>Destination City</th>
                                    <th>Departure Date / Time</th>
                                    <th>Total N<u>o</u> Of Ticket</th>
                                    <th>Date Blocked</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                             <%for (blockconfirm result : results) { 
                                    int total = result.getBc() + result.getCc() + result.getFc() +
                                    result.getNsc() + result.getSc() + result.getRegular();
                             %>
                                <tr>
                                    <td COLSPAN="5"></td>
                                </tr>
                                <tr>
                                    <td><%=k%></td>
                                    <td><%=result.getOrigin()%></td>
                                    <td><%=result.getDestinstion()%></td>
                                    <td><%=result.getDDate()%> / <%=result.getHours()%>:59:00</td>
                                    <td><%=total%>.</td>
                                    <td><%=result.getDBooked()%>.</td>
                                    <td><a class="btn btn-primary" style="color:yellow;font-weight:bold;  text-decoration: none; padding:10px;" href="./bookflight?bfid=<%=result.getId()%>">View</a></td>
                                    <td><a class="btn btn-success" style="color:yellow;font-weight:bold; text-decoration: none; padding:10px;" href="./confirmblock?bfid=<%=result.getId()%>&type=confirm">Confirm</a></td>
                                   <td><a class="btn btn-danger" style="color:yellow;font-weight:bold; text-decoration: none; padding:10px;" href="./confirmblock?bfid=<%=result.getId()%>&type=block">Cancel</a></td>
                                  
                                </tr>
                              <%k++;}%>  
                            </tbody>
                        </table>
                                
                       <%}%>   
                </div>
                
            </div>
            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3" style="background:white">
                 <%@include file="leftNav.jsp" %>
            </div>
        </div>
        <!-- close of container fluid in header file -->
    </div>
    
    <%@include file="footer.jsp" %>
    </body>
    
</html>

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

       <link rel="stylesheet" type="text/css" href="bootstrap-theme.css"/>
        <link href="boot.css" rel="stylesheet" type="text/css" href="boot.css" media="screen"/>
         <link href="bootstrap.min.css" rel="stylesheet" media="screen"/>
    </head>
    <body style="background:#dddddd">
       <%@include file="header.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background:white">
                <h3 style="color:yellow;background-color:grey;padding:10px">Our Direct Flights</h3>
                <hr/>
                <%
                        int k = 1;
                        @SuppressWarnings("unchecked") 
                        List<flighttype> results = (List<flighttype>)request.getAttribute("allflight");
                        //System.out.println("EWW");
                        if (results != null) {
                            for (flighttype result : results) { 
                            if((k%2)==0){%>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div class="panel panel-primary">
                                    <div class="panel-body label-primary" style="color:white;font-weight:bold">
                                        <h1><%= result.getDescription().toUpperCase() %></h1>
                                        <p>Distance: <%= result.getDistance() %> KM</p>
                                        <p>Hours: <%= result.getHours()%> Hrs.</p>
                                    </div>
                                </div>
                               <a href="#" >
                                    <div class="panel-footer clearfix">
                                        <div >
                                            <p><span class="pull-left"></span><span class="glyphicon glyphicon-plane pull-right"></span></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                         <%}else{%>
                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                    <div class="panel panel-primary">
                                        <div class="panel-body label-success" style="color:white;font-weight:bold">
                                            <h1><%= result.getDescription().toUpperCase() %></h1>
                                            <p>Distance: <%= result.getDistance() %> KM</p>
                                            <p>Hours: <%= result.getHours()%> Hrs.</p>
                                        </div>
                                    </div>
                                </div>
                            <%}
                            k++;
                         }
                        }
                        %>   

            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="background:white">
                 <%@include file="leftNav.jsp" %>
            </div>
        </div>
        <!-- close of container fluid in header file -->
         <%@include file="footer.jsp" %>
    </div>
    </body>
</html>

<%-- 
    Document   : adminLogin
    Created on : Oct 23, 2019, 3:56:04 PM
    Author     : CENTRE ACADEMIC HEAD
--%>


<%@page import="entity.flighttype.allPlanes"%>
<%@page import="java.util.List"%>
<%@page import="entity.flighttype"%>
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
       <link rel="stylesheet" type="text/css" href="select2.css"/>
       <link rel="stylesheet" type="text/css" href="bootstrap-datepicker.css"/>
       <link rel="stylesheet" type="text/css" href="bootstrap-datepicker3.min.css"/>
       <script type="text/javascript" src="jquery-3.2.1.js"></script>
       <script type="text/javascript" src="select2.js"></script>
       <script type="text/javascript" src="select2.min.js"></script>
       <script type="text/javascript" src="bootstrap-datepicker.js"></script>
    </head>
     <body style="background:#dddddd">
       <%@include file="adminheader.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background:white">
                <h3 style="color:yellow;background-color:grey;padding:10px">Create Flight .:. Step (1/2) : Select Plane.</h3>
                <h2 style="color:red;background-color:yellow;padding:10px"><%=request.getAttribute("error")%></h2>
                <hr/>
                <form role="form"  name="reg_form"  id="form" class="form-horizontal" action="./saveFlight" style="background-color:white; padding:15px" method="POST">
                    <input type="hidden" name="fid" value="<%=request.getAttribute("fid")%>" />
                    <div class="form-group">
                       <label for="sname" class="control-label col-xs-4">Flight Type  <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <%
                                @SuppressWarnings("unchecked") 
                                List<flighttype> resultstwo = (List<flighttype>)ses.getAttribute("flightdetails");
                            %>
                            <h2 class="btn btn-success" ><%= resultstwo.get(0).getDescription()%></h2>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtplane" class="control-label col-xs-4">Select Plane <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <select class="form-control js-example-basic-single" id="txtplane" name="txtplane">
                             <%
                                
                                @SuppressWarnings("unchecked") 
                                List<allPlanes> results = (List<allPlanes>)request.getAttribute("planeinfo");
                                //System.out.println("EWW");
                                if (results != null) {
                                    for (allPlanes result : results) { 
                            %>
                                        <option value="<%= result.getId() %>"><%= result.getPlane()%></option>			
                            <%}}%>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group" style="margin-top:25px">
                        <label for="txtdate" class="control-label col-xs-4">Flight Date <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <div class="input-group date" data-provide="datepicker">

                                    <input type="text" class="form-control"  id="txtdate" name="txtdate" value="" required="true" />
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txthours" class="control-label col-xs-4">Select Hours <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <select class="form-control js-example-basic-single" id="txthours" name="txthours">
                                <option value="00">00</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                
                            </select>
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="control-label col-xs-4" style="color:red"></label>
                        <div class="col-xs-6">
                            <input type="submit" class="btn btn-large btn-primary" value="Submit Details" />
                        </div>
                    </div>
                </form>

            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="background:white">
                 <%@include file="leftNav.jsp" %>
            </div>
        </div>
            <%@include file="footer.jsp" %>
        <!-- close of container fluid in header file -->
    </div>
    <script type="text/javascript">
            $(document).ready(function() {
                    $('.js-example-basic-single').select2();
                    
                    $('.date').datepicker({
                        format: 'yyyy/mm/dd',
                        startDate: '0d'
                    });
            });
    </script>
    
    </body>
    
</html>

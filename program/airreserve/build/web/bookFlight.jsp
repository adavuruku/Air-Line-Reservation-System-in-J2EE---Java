<%-- 
    Document   : index
    Created on : Dec 20, 2018, 6:37:33 PM
    Author     : sherif146
--%>



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
       <link rel="stylesheet" type="text/css" href="select2.css"/>
       <link rel="stylesheet" type="text/css" href="bootstrap-datepicker.css"/>
       <link rel="stylesheet" type="text/css" href="bootstrap-datepicker3.min.css"/>
       <script type="text/javascript" src="jquery-3.2.1.js"></script>
       <script type="text/javascript" src="select2.js"></script>
       <script type="text/javascript" src="select2.min.js"></script>
       <script type="text/javascript" src="bootstrap-datepicker.js"></script>
    </head>
    <body style="background:#dddddd">
       <%@include file="userheader.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background:white">
                <div class="col-xs-12">
                    <h3 style="color:yellow;background-color:grey;padding:10px">.:. BOOK / CONFIRM FLIGHTS .:.</h3>
                    <hr/>
                    <%
                        int k = 1;
                        @SuppressWarnings("unchecked") 
                        List results = (List)request.getAttribute("flightinfo");
                        int bc=0,fc=0,sc=0,nsc=0,cc=0,regular=0;
                        if (results != null) {
                             bc = (int) Integer.parseInt(results.get(5).toString());
                             fc = (int) Integer.parseInt(results.get(7).toString());
                             sc = (int) Integer.parseInt(results.get(9).toString());
                             nsc = (int) Integer.parseInt(results.get(11).toString());
                             cc = (int) Integer.parseInt(results.get(13).toString());
                             regular = (int) Integer.parseInt(results.get(15).toString());
                        }
                    %>
                    <form role="form"  name="reg_form"  id="form" class="form-horizontal" action="./confirmblock" style="background-color:white; padding:15px" method="POST">
                        <input type="hidden" value="<%=results.get(20)%>" name="planeid"/>
                        <input type="hidden" value="<%=results.get(21)%>" name="flightid"/>
                        <input type="hidden" value="<%=request.getAttribute("type")%>" name="type"/>
                         
                        <div class="form-group">
                            <label for="bc" class="control-label col-xs-4"></label>
                            
                            <div class="col-xs-6">
                                <h2 class="btn btn-success" >Flight From <%= results.get(0)%> To <%= results.get(1)%> </h2>
                            </div>
                        </div>
                         <div class="form-group">
                            <input type="hidden" value="<%=results.get(6)%>" name="bccost"/>
                            <label for="bc" class="control-label col-xs-4">Business Class <span style="color:red">*</span> : </label>
                            
                            <div class="col-xs-6">
                                <select class="form-control js-example-basic-single" id="bc" name="bc">
                                    
                                    <%
                                        int u = 0;
                                        while(u<=bc){
                                    %>
                                    <option value="<%=u%>"><%=u%></option>
                                    <%
                                            u++;
                                        }
                                    %>
                                    
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="hidden" value="<%=results.get(8)%>" name="fccost"/>
                            <label for="fc" class="control-label col-xs-4">First Class <span style="color:red">*</span> : </label>
                            <div class="col-xs-6">
                                <select class="form-control js-example-basic-single" id="fc" name="fc">
                                    <%
                                        u = 0;
                                        while(u<=fc){
                                    %>
                                    <option value="<%=u%>"><%=u%></option>
                                    <%
                                            u++;
                                        }
                                    %>
                                </select>
                            </div>
                        </div> 
                        <div class="form-group">
                            <input type="hidden" value="<%=results.get(14)%>" name="cccost"/>
                            <label for="cc" class="control-label col-xs-4">Club Class <span style="color:red">*</span> : </label>
                            <div class="col-xs-6">
                                <select class="form-control js-example-basic-single" id="cc" name="cc">
                                     <%
                                       u = 0;
                                        while(u<=cc){
                                    %>
                                    <option value="<%=u%>"><%=u%></option>
                                    <%
                                            u++;
                                        }
                                    %>
                                </select>
                            </div>
                        </div> 
                        <div class="form-group">
                            <input type="hidden" value="<%=results.get(10)%>" name="sccost"/>
                            <label for="sc" class="control-label col-xs-4">Smoking Class <span style="color:red">*</span> : </label>
                            <div class="col-xs-6">
                                <select class="form-control js-example-basic-single" id="sc" name="sc">
                                     <%
                                        u = 0;
                                        while(u<=sc){
                                    %>
                                    <option value="<%=u%>"><%=u%></option>
                                    <%
                                            u++;
                                        }
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                             <input type="hidden" value="<%=results.get(12)%>" name="nsccost"/>
                            <label for="nsc" class="control-label col-xs-4">Non Smoking Class <span style="color:red">*</span> : </label>
                            <div class="col-xs-6">
                                <select class="form-control js-example-basic-single" id="nsc" name="nsc">
                                     <%
                                       u = 0;
                                        while(u<=nsc){
                                    %>
                                    <option value="<%=u%>"><%=u%></option>
                                    <%
                                            u++;
                                        }
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                             <input type="hidden" value="<%=results.get(16)%>" name="rccost"/>
                            <label for="rc" class="control-label col-xs-4">Regular Class <span style="color:red">*</span> : </label>
                            <div class="col-xs-6">
                                <select class="form-control js-example-basic-single" id="rc" name="rc">
                                    <%
                                        u = 0;
                                        while(u<=regular){
                                    %>
                                    <option value="<%=u%>"><%=u%></option>
                                    <%
                                            u++;
                                        }
                                    %>
                                </select>
                            </div>
                        </div> 
                        
                        
                        <div class="form-group">
                            <label  class="control-label col-xs-4"></label>
                            <div class="col-xs-6">
                                <p style="color:red"><%= request.getAttribute("error")%></p>
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
                <div class="col-xs-12">
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
                </div>
                
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="background:white">
                 <%@include file="leftNav.jsp" %>
            </div>
        </div>
        <!-- close of container fluid in header file -->
    </div>
    <script type="text/javascript">
        $(document).ready(function() {
                $('.js-example-basic-single').select2();
        });
    </script>
    <%@include file="footer.jsp" %>
    </body>
    
</html>

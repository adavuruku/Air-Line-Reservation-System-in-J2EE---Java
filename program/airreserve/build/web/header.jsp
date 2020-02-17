<%-- any content can be specified here e.g.: --%>
<%@ page pageEncoding="UTF-8" %>
<nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="./home">Home  </a>
		</div>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="nav navbar-nav">
                            <li class="active"><a href="./search" target="_self">Search Airlines Schedules</a></li>
				<li class="active"><a href="./allflight" target="_self">View Airlines Schedules</a></li>
				<li ><a href="./register" target="_self">Create Account</a></li>
				<li><a href="./login" target="_self">Login</a></li>
				<li><a href="./adminLogin" target="_self">Admin</a></li>
			</ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li style="font-family:due;font-weight:bold" class="active"><a href="#"><% out.print(java.util.Calendar.getInstance().getTime());%></a></li>
                        </ul>
		</div>
	</div>
</nav>
<div class="container-fluid">
    <div style="font-family:due;color:brown;padding-bottom:5px;padding-top:5px;background-color:beige" class="jumbotron">
            <h1 style="font-family:due;color:brown;padding:20px;padding-bottom:5px">Nigeria Air Ways Reservation System </h1>
            <p style="font-family:due;color:blue;padding-left:20px">We Take You Around Nigeria Through The Beautiful Sky !!! </p>
    </div>


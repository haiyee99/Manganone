<%
	/*1.0 Check if any user is logged in*/
<<<<<<< HEAD
	String username = (String) session.getAttribute("user_name");
	Boolean isLogged = (username != null);
=======
	Boolean isLogged = false;
	String username = "";

	String user_id = (String) session.getAttribute("user_id");

	if(user_id != null){
		isLogged = true;
		username = (String) session.getAttribute("user_name");
	}
>>>>>>> 9ee3a8124ee827e01b753849b9677afb781e4141
%>
<header class="navbar">
	<a href="./index.jsp" class="nav_icon"></a>
	<div class="nav_content">
		<div class="nav_content_wrapper">
			<div class="nav_link">
				<div class="nav_link_wrapper">
					<a href="#">MANGA</a>
					<a href="#">LIGHT NOVEL</a>
				</div>
			</div>
			<div class="nav_acc">
				<% if(!isLogged){ %> 
					<a href="./login.jsp" class="button button_1">SIGN IN</a>
					<a href="./register.jsp" class="button button_2">SIGN UP</a>
				<% } else { %>
<<<<<<< HEAD
					<span class="logged_msg">Welcome, <%= username%></span>
					<div class="user_img"><%= username.charAt(0) %></div>
=======
					<span class="logged_msg">Welcome, <%=username%></span>
					<span class="logged_msg"> <a href="utility/doLogout.jsp">Logout</a> </span>
					<img src="#" style="width: 50px; height: 50px; border: 1px solid black;">
>>>>>>> 9ee3a8124ee827e01b753849b9677afb781e4141
				<% } %>
			</div>
		</div>
	</div>
</header>
<form class="section header_search_form" id="search_form" action="./search_result.jsp">
	<div class="input_container">
		<i class="fas fa-search" onclick="submit_search_form();"></i>
		<input type="text" name="search_key" placeholder="Search">
	</div>
	<select name="search_category" required>
		<option value="" disabled selected hidden>Category</option>
		<option value="1">Manga</option>
		<option value="2">Light Novel</option>
	</select>
</form>
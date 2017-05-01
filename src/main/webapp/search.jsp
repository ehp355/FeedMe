<!DOCTYPE html>
<html style="width:100%;height:100%;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Untitled</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button1.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.Query" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<%@ page import="com.google.appengine.api.datastore.FetchOptions" %>
<%@ page import="com.google.appengine.api.datastore.Key" %>
<%@ page import="com.google.appengine.api.datastore.KeyFactory" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<body style="background-image:url(&quot;assets/img/food-drink-kitchen-cutting-board.jpg&quot;);width:100%;height:100%;">
    <div style="width:100%;height:10%;">
        <nav class="navbar navbar-default navigation-clean-button" style="background-color:rgb(37,35,35);width:100%;height:100%;">
            <div class="container">
                <div class="navbar-header"><a class="navbar-brand navbar-link" href="#" style="color:rgb(142,142,142);padding-top:16%;padding-bottom:16%;">Feed Me</a>
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav">
                        <li class="active" role="presentation"><a href="#" style="color:rgb(142,142,142);padding-top:16%;">Search </a></li>
                        <li role="presentation"><a href="#" style="color:#8e8e8e;padding-top:16%;">Random </a></li>
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#" style="color:#8e8e8e;padding-top:16%;">Stored <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li role="presentation"><a href="#">First Item</a></li>
                                <li role="presentation"><a href="#">Second Item</a></li>
                                <li role="presentation"><a href="#">Third Item</a></li>
                            </ul>
                        </li>
                    </ul>
                    <p class="navbar-text navbar-right actions"><a class="navbar-link login" href="#" style="color:#8e8e8e;">Log In</a> <a class="btn btn-default action-button" role="button" href="#" id="b_sign">Sign Up</a></p>
                </div>
            </div>
        </nav>
    </div>
    <div class="container" style="width:900;margin:30;background-color:White;">
    	<% ArrayList<String> recipes = (ArrayList<String>)request.getAttribute("recipes");
				System.out.println(recipes.toString());	
					ArrayList<Long> recipeIDs = (ArrayList<Long>)request.getAttribute("recipeIDs");
					System.out.println(recipeIDs.toString());
					ArrayList<String> summaries = (ArrayList<String>)request.getAttribute("summaries");
			    	for(int i = 0; i < recipeIDs.size(); i++)
			    	{
				    %>  
				    	 <div class="jumbotron">
				            <h1><a href="/recipe/<%=recipeIDs.get(i)%>"><%= recipes.get(i).toString()	+ "\n"%></a></h1>
				            <p><%= summaries.get(i).toString()	+ "\n"%></p>
				        </div>
				    	
			    <% } %>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
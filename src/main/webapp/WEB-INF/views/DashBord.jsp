<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
    <style>
        .search-box {
    float: right;
}
    </style>
</head>
<body>
    <%@ include file="Header.jsp" %>
    
    <div class="content">
        <div id="search" style="font-family: Arial, sans-serif;position: absolute;top: 86px;left: 100px;right: 11%;">
        <div class="search-box">
            <input type="text" placeholder="Search">
            <button>Search</button>
        </div>
        </div>
    </div>
    <div id="emi-cal">
        <!-- Your main content here -->
        This is the main content area.
    </div>
    
    <%@ include file="Footer.jsp" %>
</body>
</html>
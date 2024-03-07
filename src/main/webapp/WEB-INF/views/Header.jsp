<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Header</title>
    <style>

body {
    margin: 0;
    font-family: Arial, sans-serif;
}

.header {
    background-color: #333;
    color: #fff;
    padding: 20px;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
}

.menu a {
    color: #fff;
    text-decoration: none;
    margin-right: 10px;
}

    </style>
</head>
<body>
    <div class="header">
        <div class="logo">Logo</div>
        <div class="menu">
    
            <button><a href="#" style="color: black;">Home</a></button>
           <button><a href="#" style="color: black;">Track</a></button>
            <button><a href="#" style="color: black;" onclick="submitEMIForm()">Loan Apply</a></button>
            <button><a href="#" style="color: black;" onclick="loneOfferingForm()">Loan Offerings</a></button>
            <button><a href="/logout" style="color: black;">Logout</a></button>
        </div>
        
    </div>
    <form:form id="myEMIForm" action="/dashboard/homeLoan" method="post">
    </form:form>
    <form:form id="loanOffering" action="/dashboard/loanOffer" method="post">
    </form:form>
   
    <script>
    function submitEMIForm() {
        document.getElementById("myEMIForm").submit();
    }
    function loneOfferingForm() {
        document.getElementById("loanOffering").submit();
    }
    </script>
</body>
</html>
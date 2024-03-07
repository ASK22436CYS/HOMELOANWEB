<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
    
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
    
        table, th, td {
            border: 1px solid #ccc;
        }
    
        th, td {
            padding: 8px;
            text-align: left;
        }
    
        th {
            background-color: #f2f2f2;
        }
    
        input[type="number"] {
            width: 100px;
            padding: 5px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
    
        button {
            padding: 5px 15px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    
        button:hover {
            background-color: #0056b3;
        }
    
    </style>
</head>
<body>
    <%@ include file="Header.jsp" %>
    <div class="container">
        <h2>Loan Offering</h2>
        <table>
            <tr>
                <th>Type of Loan</th>
                <th>ToCheck</th>
    
            </tr>
            <tr>
                <td>HomeLoan</td>
                <td><button onclick="homeLoanView()">View</button></td>
            </tr>
            <tr>
                <td>Construction Loan</td>
                <td><button onclick="constructionLoanView()">View</button></td>
            </tr>
            <tr>
                <td>Renevative Loan</td>
                <td><button onclick="renevationLoanView()">View</button></td>
            </tr>
        </table>
        </div>
    </div>
    
    <div class="container-2" id="container-2" style="display: none;" >
        <h2>Loan Overview</h2>
        <table>
            <tr>
                <td>Type of Loan</td>
                <td><span id="loneType"></span></td>
            </tr>
            <tr>
                <td>Rate Of Intrest</td>
                <td><span id="loaneIntrest"></span></td>
            </tr>
            <tr>
                <td>Max Tenure</td>
                <td><span id="maxloanTenure"></span></td>
            </tr>
            <tr>
                <td>Max Loan Amount</td>
                <td><span id="maxLoanAmount"></span></td>
            </tr>
            <tr>
                <td>Documents Required</td>
                <td><span id="requiredDocument"></span></td>
            </tr>
        </table>
        </div>
    </div>
    
    <script>
        function homeLoanView(){
            document.getElementById("container-2").style.display='block';
            document.getElementById("loneType").innerText="Home Lone";
            document.getElementById("loaneIntrest").innerText="8.0%";
            document.getElementById("maxloanTenure").innerText="30 Years";
            document.getElementById("maxLoanAmount").innerText="2 Crores";
            document.getElementById("requiredDocument").innerText="Adhar,PAN card";
    
        }
    
        function constructionLoanView(){
            document.getElementById("container-2").style.display='block';
            document.getElementById("loneType").innerText="Construction Loan";
            document.getElementById("loaneIntrest").innerText="9.5%";
            document.getElementById("maxloanTenure").innerText="20 Years";
            document.getElementById("maxLoanAmount").innerText="1.50 Crores";
            document.getElementById("requiredDocument").innerText="Adhar,PAN card";
    
        }
        function renevationLoanView(){
            document.getElementById("container-2").style.display='block';
            document.getElementById("loneType").innerText="Renevative Loan";
            document.getElementById("loaneIntrest").innerText="6.5%";
            document.getElementById("maxloanTenure").innerText="10 Years";
            document.getElementById("maxLoanAmount").innerText="75 Laks";
            document.getElementById("requiredDocument").innerText="Adhar,PAN card";
    
        }
        
    </script>
    
    
    <%@ include file="Footer.jsp" %>
</body>
</html>
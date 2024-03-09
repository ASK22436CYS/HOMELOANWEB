<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Home Loan Calculating Loan EMI</title>
  <style>
      @import url("https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap");
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  body {
    font-family: "Inter", sans-serif;
  }
  .formbold-mb-3 {
    margin-bottom: 15px;
  }
  .formbold-relative {
    position: relative;
  }
  .formbold-opacity-0 {
    opacity: 0;
  }
  .formbold-stroke-current {
    stroke: currentColor;
  }
  #supportCheckbox:checked ~ div span {
    opacity: 1;
  }

  .formbold-main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 48px;
  }

  .formbold-form-wrapper {
    margin: 0 auto;
    max-width: 570px;
    width: 100%;
    background: white;
    padding: 40px;
  }

  .formbold-img {
    margin-bottom: 45px;
  }

  .formbold-form-title {
    margin-bottom: 30px;
  }
  .formbold-form-title h2 {
    font-weight: 600;
    font-size: 28px;
    line-height: 34px;
    color: #07074d;
  }
  .formbold-form-title p {
    font-size: 16px;
    line-height: 24px;
    color: #536387;
    margin-top: 12px;
  }

  .formbold-input-flex {
    display: flex;
    gap: 20px;
    margin-bottom: 15px;
  }
  .formbold-input-flex > div {
    width: 50%;
  }
  .formbold-form-input {
    text-align: center;
    width: 100%;
    padding: 13px 22px;
    border-radius: 5px;
    border: 1px solid #dde3ec;
    background: #ffffff;
    font-weight: 500;
    font-size: 16px;
    color: #536387;
    outline: none;
    resize: none;
  }
  .formbold-form-input:focus {
    border-color: #6a64f1;
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }
  .formbold-form-label {
    color: #536387;
    font-size: 14px;
    line-height: 24px;
    display: block;
    margin-bottom: 10px;
  }

  .formbold-checkbox-label {
    display: flex;
    cursor: pointer;
    user-select: none;
    font-size: 16px;
    line-height: 24px;
    color: #536387;
  }
  .formbold-checkbox-label a {
    margin-left: 5px;
    color: #6a64f1;
  }
  .formbold-input-checkbox {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    white-space: nowrap;
    border-width: 0;
  }
  .formbold-checkbox-inner {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 20px;
    height: 20px;
    margin-right: 16px;
    margin-top: 2px;
    border: 0.7px solid #dde3ec;
    border-radius: 3px;
  }

  .formbold-btn {
    font-size: 16px;
    border-radius: 5px;
    padding: 14px 25px;
    border: none;
    font-weight: 500;
    background-color: #6a64f1;
    color: white;
    cursor: pointer;
    margin-top: 25px;

  }
  .formbold-btn:hover {
    box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
  }
  table {
    width: 50%;
    border-collapse: collapse;
    margin-bottom: 20px;
    padding-left: 50;
    position: relative;
    left: 0%;
}

.container-2 {
           
            margin: -2%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
.spantags{
    color: #536387;
    font-size: 14px;
    line-height: 24px;
    display: block;
    margin-bottom: 10px;
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
    </style>
</head>
<body>
    <%@ include file="Header.jsp" %>
    <div class="formbold-main-wrapper">
      <!-- Author: FormBold Team -->
      <!-- Learn More: https://formbold.com -->
      <div class="formbold-form-wrapper">
        
          <div class="formbold-form-title">
            <h2 class="">Calculate Your Loan</h2>
            <p></p>
          </div>
    
          <div class="formbold-input-flex">
            <div>
              <label for="name" class="formbold-form-label">
                Loan Type :
              </label>
              <select id="LoanType" name="LoanType" class="formbold-form-input" onchange="changeIntrest()">
                <option value="">Select Type</option>
                <option value="HomeLone">HomeLone</option>
                <option value="constructionLoan">Construction Loan</option>
                <option value="renavativeLoan">Renevative Loan</option>
            </select>
            <span id="errorType" style="color: red;"></span>
            </div>
            <div>
              <label for="interest" class="formbold-form-label"> Rate Of Interest%: </label>
              <input path="userEmail"
                type="text"
                name="interest"
                id="interest"
                class="formbold-form-input"
                readonly
              />
            </div>
          </div>
          
          <div class="formbold-input-flex">
            
            <div>
              <label for="tenure" class="formbold-form-label"> Tenure In Years: </label>
              <input path="userMobile"
                type="text"
                name="tenure"
                id="tenure"
                class="formbold-form-input"
                oninput="hidingTable()"
                required
              />
              <span id="errorTenure" style="color: red;"></span>
            </div>
            <div>
              <label for="amount" class="formbold-form-label" > Loan Amount: </label>
              <input path="amount"
                type="text"
                name="amount"
                id="amount"
                class="formbold-form-input"
                oninput="hidingTableAmount()"
                required
              />
              <span id="errorAmount" style="color: red;"></span>
            </div>
         </div>
          <div class="formbold-input-flex">
        <button class="formbold-btn" onclick="return calculateLoan()">Calculate</button>
   `     </div>
</div>
</div>
    </div>
    <form method="" id="" action="">
<div class="container-2" id="container-2">
    <table id="table" style="display: none;">
        <tr>
            <th>Type of Loan</th>
            <th>Rate of Interest (%)</th>
            <th>Tenure (years)</th>
            <th>Amount</th>
            <th>MonthlyEMI</th>
            <th>IntrestAmount</th>
            <th>TotalAmount</th>

        </tr>
        <tr>
          <td><input type="text" id="lone" style="color:  #536387;"/ readonly></td>
            
            <td><input type="text" id="RI" style="color:  #536387;"/ readonly></td>
            
            <td><input type="text" id="Te" style="color:  #536387;"/ readonly></td>
            
            <td><input type="text" id="PA" style="color:  #536387;"/ readonly></td>
            
            <td><input type="text" id="MEMI" style="color:  #536387;"/ readonly></td>
            
            <td><input type="text" id="IA" style="color:  #536387;"/ readonly></td>
            
            <td><input type="text" id="TA" style="color:  #536387;"/ readonly></td>
            
            <td><input type="submit" class="formbold-btn" value="APPLY"/> </td>
        </tr>
    </table>
    </div>
  </form>
<script>

    

//document.getElementById("name").addEventListener("keyup",function(){
  // table.style.display='none';
//var n=document.getElementById("name").value;
//var element=document.getElementById("error");
//var pattern = /[A-Za-z]+/;
//var pattern = /^\d+(\.\d{1,2})?$/;
//if(pattern.test(n)){
  //  element.style.display = 'none';
//}else{
  //  element.style.display = 'block';
//}
//});



   
function changeIntrest(){
  table.style.display='none';
  document.getElementById("errorType").textContent="";
  document.getElementById("errorTenure").textContent="";
  document.getElementById("errorAmount").textContent="";
    //console.log("eneterd");
    var cou=document.getElementById("LoanType").value;
    console.log("country ::"+cou);
    if(cou==="HomeLone"){
    document.getElementById("interest").value="8.0";
}else if(cou==="constructionLoan"){
    document.getElementById("interest").value="9.5";
}else{
    document.getElementById("interest").value="6.5";
}
}
    
function calculateLoan() {
  var type=document.getElementById("LoanType").value;
  var int=document.getElementById("interest").value;
  var ten=document.getElementById("tenure").value;
  var am=document.getElementById("amount").value;
  console.log("entered in to type :: "+type);
  console.log("entered in to ten :: "+ten)
  console.log("entered in to Amount ::"+am)
  //console.log("entered in to type")
  if(type===""){
      console.log("entered in to type")
      document.getElementById("errorType").textContent="please select Loan Type";
      return false;
  }else if(ten==="" || ten==="0"){
      document.getElementById("errorType").textContent="";
      document.getElementById("errorTenure").textContent="please Enter Tenure";
      return false;
  }else if(am==="" || am==="0"){
      document.getElementById("errorTenure").textContent="";
      document.getElementById("errorAmount").textContent="please Enter Amount";
      return false;
  }else if(type==="HomeLone" && parseFloat(ten)>30){
      document.getElementById("errorAmount").textContent="";
      document.getElementById("errorTenure").textContent="For Home Loan tenure is Max 30 Years";
      return false;

  }else if(type==="constructionLoan" && parseFloat(ten)>20){
      document.getElementById("errorTenure").textContent="";
      document.getElementById("errorTenure").textContent="For Construction Loan tenure is Max 20 Years ";
      return false;
  }else if(type==="renavativeLoan" && parseFloat(ten)>10){
      document.getElementById("errorTenure").textContent="";
      document.getElementById("errorTenure").textContent="For renavativeLoan Loan tenure is max 10 Years";
      return false;
  }else if(type==="HomeLone" && parseFloat(am)>20000000){
      document.getElementById("errorTenure").textContent="";
      document.getElementById("errorAmount").textContent="For Home Loan Amount Max 2 CR";
      return false;

  }else if(type==="constructionLoan" && parseFloat(am)>15000000){
      document.getElementById("errorAmount").textContent="";
      document.getElementById("errorAmount").textContent="For Construction Loan Amount Max 1.5 CR";
      return false;
  }else if(type==="renavativeLoan" && parseFloat(am)>7500000){
      document.getElementById("errorAmount").textContent="";
      document.getElementById("errorAmount").textContent="For Construction Loan Amount  Max 75 Laks";
      return false;
  }else{
      document.getElementById("errorAmount").textContent="";
  }
    console.log("entered into loan")
    if(table.style.display ==="none"){
        table.style.display='table';
        console.log("make display as show")
var loanAmount = parseFloat(document.getElementById("amount").value);
var interestRate = parseFloat(document.getElementById("interest").value) / 100;
var loanTerm = parseFloat(document.getElementById("tenure").value);

var monthlyRate = interestRate / 12;
var months = loanTerm * 12;

var monthlyPayment = (loanAmount * monthlyRate) / (1 - Math.pow(1 + monthlyRate, -months));
var totalPayment = monthlyPayment * months;
var totalInterest = totalPayment - loanAmount;

var typeOfLoan=document.getElementById("LoanType").value;
document.getElementById("lone").value=typeOfLoan;

        var intrest1=document.getElementById("interest").value;
document.getElementById("RI").value=intrest1;

        var ten=document.getElementById("tenure").value;
document.getElementById("Te").value=ten;

        var Amo=document.getElementById("amount").value;
document.getElementById("PA").value=Amo;

document.getElementById("MEMI").value=monthlyPayment.toFixed(2);
document.getElementById("IA").value=totalInterest.toFixed(2);
document.getElementById("TA").value=totalPayment.toFixed(2);

//document.getElementById("result").innerHTML = `
   // <h2>Loan Summary</h2>
   // <p>Monthly Payment: $${monthlyPayment.toFixed(2)}</p>
    //<p>Total Payment: $${totalPayment.toFixed(2)}</p>
    //<p>Total Interest: $${totalInterest.toFixed(2)}</p>
//`;

//return false; // Prevent form submission
    }
}

function hidingTable(){
console.log("entered into onchange");
var n=document.getElementById("tenure").value;
var pattern = /^\d+(\.\d{0,2})?$/;

if(pattern.test(n)){
    console.log("true");
    document.getElementById("errorTenure").textContent="";
}else{
  document.getElementById("errorTenure").textContent="Please enter the valid Number(eg . 1 or 1.0)";
}
if(table.style.display ==="table"){
console.log("hide");
        table.style.display='none';
}

}

function hidingTableAmount(){
console.log("entered into onchange");
var n=document.getElementById("amount").value;
var pattern = /^\d+(\.\d+)?$/;

if(pattern.test(n)){
    console.log("true");
    document.getElementById("errorAmount").textContent="";
}else{
  document.getElementById("errorAmount").textContent="Please enter the valid Amount";
}
if(table.style.display ==="table"){
console.log("hide");
        table.style.display='none';
}

}
   
</script>
    <%@ include file="Footer.jsp" %>
    </body>
</html>
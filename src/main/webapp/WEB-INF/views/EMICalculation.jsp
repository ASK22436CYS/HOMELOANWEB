<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
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
      left: 28%;
  }
  .spantags{
      color: #536387;
      font-size: 14px;
      line-height: 24px;
      display: block;
      margin-bottom: 10px;
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
    <body>
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
                  </div>
                  <div>
                    <label for="interest" class="formbold-form-label"> Rate Of Interest%: </label>
                    <input path="userEmail"
                      type="text"
                      name="interest"
                      id="interest"
                      class="formbold-form-input"
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
                    />
                  </div>
                  <div>
                    <label for="amount" class="formbold-form-label"> Loan Amount: </label>
                    <input path="amount"
                      type="text"
                      name="amount"
                      id="amount"
                      class="formbold-form-input"
                    />
                  </div>
               </div>
                <div class="formbold-input-flex">
              <button class="formbold-btn" onclick="calculateLoan()">Calculate</button>
         `     </div>
      </div>
  </div>
          </div>
      <div >
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
                  <td><span id="lone" style="color: #536387;"></span></td>
                  <td><span id="RI" style="color: #536387;"></span></td>
                  <td><span id="Te" style="color: #536387;"></span></td>
                  <td><span id="PA" style="color: #536387;"></span></td>
                  <td><span id="MEMI" style="color: #536387;"></span></td>
                  <td><span id="IA" style="color: #536387;"></span></td>
                  <td><span id="TA" style="color: #536387;"></span></td>
                  <td><button class="formbold-btn">APPLY</button></td>
              </tr>
          </table>
          </div>
      <script>
  
          
      
      document.getElementById("name").addEventListener("keyup",function(){
          table.style.display='none';
      var n=document.getElementById("name").value;
      var element=document.getElementById("error");
      var pattern = /[A-Za-z]+/;
      if(pattern.test(n)){
          element.style.display = 'none';
      }else{
          element.style.display = 'block';
      }
      });
  
  
  
         
      function changeIntrest(){
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
      document.getElementById("lone").textContent=typeOfLoan;
  
              var intrest1=document.getElementById("interest").value;
      document.getElementById("RI").textContent=intrest1;
  
              var ten=document.getElementById("tenure").value;
      document.getElementById("Te").textContent=ten;
  
              var Amo=document.getElementById("amount").value;
      document.getElementById("PA").textContent=Amo;
  
      document.getElementById("MEMI").textContent=monthlyPayment.toFixed(2);
      document.getElementById("IA").textContent=totalInterest.toFixed(2);
      document.getElementById("TA").textContent=totalPayment.toFixed(2);
      
      //document.getElementById("result").innerHTML = `
         // <h2>Loan Summary</h2>
         // <p>Monthly Payment: $${monthlyPayment.toFixed(2)}</p>
          //<p>Total Payment: $${totalPayment.toFixed(2)}</p>
          //<p>Total Interest: $${totalInterest.toFixed(2)}</p>
      //`;
      
      //return false; // Prevent form submission
          }
  }
         
      </script>
    <%@ include file="Footer.jsp" %>
    </body>
</html>
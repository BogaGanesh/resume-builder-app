<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>User Resume App</title>
<style>
  body {
    font-family: "Segoe UI", Arial, sans-serif;
    background-color: #e3f2fd;  /* light blue solid background */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
  }

  .container {
    background-color: white;
    padding: 40px 60px;
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
    text-align: center;
    width: 360px;
  }

  h2 {
    color: #0d47a1;
    margin-bottom: 30px;
    font-size: 24px;
  }

  form {
    margin: 20px 0;
  }

  input[type=submit] {
    width: 100%;
    padding: 12px 0;
    background-color: #1565c0;
    color: white;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    transition: all 0.3s ease;
  }

  input[type=submit]:hover {
    background-color: #0d47a1;
    transform: scale(1.03);
  }

  .footer {
    margin-top: 20px;
    color: #607d8b;
    font-size: 13px;
  }
</style>
</head>
<body>
  <div class="container">
    <h2>Welcome to Resume Builder App</h2>
    <form action="register.jsp" method="get">
      <input type="submit" value="Register">
    </form> 
    <form action="login.jsp" method="get">
      <input type="submit" value="Login">
    </form>
    <div class="footer">
      &copy; 2025 Resume Builder | JSP + Servlet + JDBC
    </div>
  </div>
</body>
</html>

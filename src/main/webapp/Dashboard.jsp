<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resume Dashboard</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #e3f2fd;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background: #fff;
        padding: 30px;
        width: 350px;
        border-radius: 10px;
        text-align: center;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        position: relative;
    }

    h2 {
        margin-bottom: 25px;
        color: #0d47a1;
    }

    input[type="submit"] {
        width: 100%;
        background: #1976d2;
        color: white;
        padding: 12px;
        margin-top: 10px;
        border: none;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background 0.3s;
    }

    input[type="submit"]:hover {
        background: #0d47a1;
    }

    .logout-link {
        display: inline-block;
        margin-top: 20px;
        font-size: 15px;
        color: #1976d2;
        text-decoration: none;
        font-weight: bold;
        transition: color 0.3s, transform 0.2s;
    }

    .logout-link:hover {
        color: #0d47a1;
        text-decoration: underline;
        transform: scale(1.05);
    }

    .footer {
        margin-top: 25px;
        font-size: 13px;
        color: #666;
    }
</style>
</head>
<body>

    <div class="container">
        <h2>Resume Dashboard</h2>

        <form action="resumeform.jsp" method="get">
            <input type="submit" value="Create Resume">
        </form>

        <form action="viewresume" method="get">
            <input type="submit" value="View Resume">
        </form>
        
        <form action="update" method="get">
            <input type="submit" value="Update Resume">
        </form>
        
        <form action="delete" method="get">
            <input type="submit" value="Delete Resume">
        </form>

        

        <div class="footer">
        		<p style="color: green; font-weight: bold; font-size: 18px; text-align: center; margin-top: 10px;">
    ${message}
</p>
            &copy; 2025 Resume Builder | JSP + Servlet + JDBC  <a href="login.jsp" class="logout-link"> Logout</a>
        </div>
    </div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<style>

    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: #e8eaf6;
        font-family: "Poppins", Arial, sans-serif;
    }

    .login-box {
        width: 360px;
        padding: 32px;
        border-radius: 12px;
        background: #ffffff;
        box-shadow:
            0 4px 12px rgba(0,0,0,0.15),
            0 2px 4px rgba(0,0,0,0.10);
        animation: fadeIn 0.6s ease-out;
        text-align: center;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to   { opacity: 1; transform: translateY(0); }
    }

    h2 {
        margin-bottom: 22px;
        color: #1a237e;
        font-size: 26px;
        font-weight: 600;
    }

    .input-field {
        margin-bottom: 22px;
        position: relative;
    }

    .input-field label {
        position: absolute;
        top: 12px;
        left: 12px;
        font-size: 14px;
        color: #555;
        pointer-events: none;
        transition: 0.2s ease;
    }

    input {
        width: 100%;
        padding: 14px 12px 12px 12px;
        border: none;
        outline: none;
        border-bottom: 2px solid #b0bec5;
        font-size: 15px;
        background: none;
        transition: 0.25s ease;
    }

    input:focus {
        border-bottom: 2px solid #3f51b5;
    }

    input:focus + label,
    input:not(:placeholder-shown) + label {
        top: -10px;
        left: 8px;
        font-size: 12px;
        color: #3f51b5;
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background: #3f51b5;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        margin-top: 10px;
        transition: 0.2s ease;
        box-shadow: 0 3px 8px rgba(63,81,181,0.3);
    }

    input[type="submit"]:hover {
        background: #303f9f;
        box-shadow: 0 4px 12px rgba(63,81,181,0.45);
    }

    .register-link {
        margin-top: 18px;
        font-size: 14px;
    }

    .register-link a {
        color: #3f51b5;
        text-decoration: none;
        font-weight: 500;
        transition: 0.3s;
    }

    .register-link a:hover {
        color: #1a237e;
    }

    .message {
        text-align: center;
        font-size: 14px;
        font-weight: 600;
        margin-top: 10px;
    }

</style>

</head>
<body>

<div class="login-box">
    <h2>Login</h2>

    <form action="login" method="post">

        <div class="input-field">
            <input type="email" name="email" required placeholder=" ">
            <label>Email</label>
        </div>

        <div class="input-field">
            <input type="password" name="password" required placeholder=" ">
            <label>Password</label>
        </div>

        <input type="submit" value="Login">

        <% String msg = (String) request.getAttribute("msg");
           if (msg != null) { %>
            <p class="message" style="color:#2e7d32;"><%= msg %></p>
        <% } %>

        <% String err = (String) request.getAttribute("error");
           if (err != null) { %>
            <p class="message" style="color:#d32f2f;"><%= err %></p>
        <% } %>

    </form>

    <div class="register-link">
        <p>Don't have an account? <a href="register.jsp">Register Here</a></p>
    </div>
</div>

</body>
</html>

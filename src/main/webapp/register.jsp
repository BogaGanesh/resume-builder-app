<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Register User</title>

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

    .form-container {
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
        margin-bottom: 20px;
        color: #1a237e;
        font-weight: 600;
        font-size: 26px;
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
        color: #666;
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
        transition: 0.25s ease;
        background: none;
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
        margin-top: 10px;
        border-radius: 8px;
        border: none;
        color: white;
        background: #3f51b5;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        transition: 0.2s ease;
        box-shadow: 0 3px 8px rgba(63,81,181,0.3);
    }

    input[type="submit"]:hover {
        background: #303f9f;
        box-shadow: 0 4px 12px rgba(63,81,181,0.45);
    }

    .message {
        font-size: 14px;
        margin-top: 10px;
    }

    .login-link {
        display: inline-block;
        margin-top: 18px;
        font-size: 14px;
        color: #3f51b5;
        text-decoration: none;
        font-weight: 500;
        transition: 0.3s;
    }

    .login-link:hover {
        color: #1a237e;
    }

</style>
</head>

<body>

<div class="form-container">
    <h2>Register</h2>

    <form action="register" method="post">

        <div class="input-field">
            <input type="text" name="username" required placeholder=" ">
            <label>Username</label>
        </div>

        <div class="input-field">
            <input type="email" name="email" required placeholder=" ">
            <label>Email</label>
        </div>

        <div class="input-field">
            <input type="password" name="password" required placeholder=" ">
            <label>Password</label>
        </div>

        <div class="input-field">
            <input type="password" name="pswd" required placeholder=" ">
            <label>Re-Enter Password</label>
        </div>

        <input type="submit" value="Register">

        <% String error = (String) request.getAttribute("error");
           if (error != null) { %>
            <p style="color:#d32f2f; font-weight:600;"><%= error %></p>
        <% } %>

        <% String msg = (String) request.getAttribute("msg");
           if (msg != null) { %>
            <p style="color:#2e7d32; font-weight:600;"><%= msg %></p>
        <% } %>

    </form>

    <a href="login.jsp" class="login-link">Already have an account? Login here</a>

</div>

</body>
</html>

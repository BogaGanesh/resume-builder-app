<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Resume</title>

<style>

    body {
        margin: 0;
        padding: 40px 0;
        background: linear-gradient(to right, #dae2f8, #d6a4a4);
        font-family: "Segoe UI", Arial, sans-serif;
        display: flex;
        flex-direction: column;
        align-items: center;
        min-height: 100vh;
    }

    .resume-wrapper {
        width: 780px;
        background: #ffffff;
        border-radius: 14px;
        padding: 40px 50px;
        box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
        border: 1px solid #ececec;
        backdrop-filter: blur(10px);
        animation: fadeIn 0.6s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .name-header {
        text-align: center;
        margin-bottom: 35px;
        padding-bottom: 10px;
        border-bottom: 2px solid #eee;
    }

    .name-header h1 {
        margin: 0;
        font-size: 32px;
        font-weight: 700;
        color: #2d3142;
    }

    .name-header p {
        margin-top: 8px;
        color: #4f5d75;
        font-size: 15px;
    }

    .section-title {
        font-size: 19px;
        font-weight: 700;
        color: #1b263b;
        margin-top: 28px;
        margin-bottom: 12px;
        padding-bottom: 5px;
        border-left: 4px solid #415a77;
        padding-left: 10px;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .info-box {
        background: #f8f9fb;
        padding: 12px 15px;
        border-radius: 8px;
        border: 1px solid #e7e7e7;
        box-shadow: inset 0 0 6px rgba(0,0,0,0.05);
        margin-bottom: 15px;
    }

    .info-box p {
        margin: 6px 0;
        font-size: 15px;
        color: #333;
        line-height: 1.7;
    }

    .msg {
        text-align: center;
        font-weight: bold;
        color: #d62828;
        margin-top: 20px;
        font-size: 16px;
    }

    /* ✅ FIXED: Button perfectly centered below resume */
    .btn-box {
        width: 780px;               
        display: flex;
        justify-content: center;
        margin-top: 25px;
        position: relative;
        left: 0; /* Ensures perfect alignment */
    }

    .btn-box button {
        padding: 12px 28px;
        background: linear-gradient(135deg, #415a77, #1b263b);
        border: none;
        color: white;
        font-size: 15px;
        border-radius: 50px;
        cursor: pointer;
        transition: 0.3s;
        box-shadow: 0 6px 16px rgba(0,0,0,0.2);
    }

    .btn-box button:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 18px rgba(0,0,0,0.3);
    }

</style>
</head>

<body>

<c:forEach var="r" items="${details}">
<div class="resume-wrapper">

    <div class="name-header">
        <h1>${r.name}</h1>
        <p>${r.email} • ${r.phone}</p>
    </div>

    <div class="section-title">Skills</div>
    <div class="info-box">
        <p>${r.skill}</p>
    </div>

    <div class="section-title">Education</div>
    <div class="info-box">
        <p>${r.education}</p>
    </div>

    <div class="section-title">Experience</div>
    <div class="info-box">
        <p>${r.experience}</p>
    </div>

    <div class="section-title">Project</div>
    <div class="info-box">
        <p><strong>${r.project}</strong></p>
        <p>${r.projdesc}</p>
    </div>

    <div class="section-title">Certificates</div>
    <div class="info-box">
        <p>${r.certificates}</p>
    </div>

    <div class="section-title">Achievements</div>
    <div class="info-box">
        <p>${r.achievements}</p>
    </div>

</div>
</c:forEach>

<div class="msg">
    <c:if test="${not empty msg}">
        ${msg}
    </c:if>
</div>

<div class="btn-box">
    <c:if test="${not empty sessionScope.email}">
        <form action="Dashboard.jsp" method="get">
            <button>Back to Dashboard</button>
        </form>
    </c:if>
</div>

</body>
</html>

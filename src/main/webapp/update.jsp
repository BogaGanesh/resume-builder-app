<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Update Resume</title>

<style>

body {
    margin: 0;
    padding: 40px 0;
    min-height: 100vh;
    background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%);
    display: flex;
    justify-content: center;
    font-family: "Poppins", Arial, sans-serif;
}

.resume-container {
    width: 520px;
    padding: 35px;
    border-radius: 20px;
    background: rgba(255, 255, 255, 0.25);
    box-shadow: 0 8px 32px rgba(31, 38, 135, 0.20);
    backdrop-filter: blur(12px);
    -webkit-backdrop-filter: blur(12px);
    border: 1px solid rgba(255, 255, 255, 0.28);
    animation: fadeIn 0.7s ease-out;
}

@keyframes fadeIn {
    from {opacity: 0; transform: translateY(20px);}
    to   {opacity: 1; transform: translateY(0);}
}

h2 {
    text-align: center;
    font-size: 28px;
    margin-bottom: 20px;
    color: #333;
    font-weight: 700;
}

label {
    font-weight: 600;
    color: #222;
    display: block;
    font-size: 14px;
    margin-top: 14px;
}

input[type="text"],
input[type="email"],
textarea,
select {
    width: 100%;
    padding: 12px;
    margin-top: 6px;
    background: rgba(255, 255, 255, 0.55);
    border: 1.5px solid rgba(255, 255, 255, 0.7);
    border-radius: 10px;
    font-size: 14px;
    color: #111;
    backdrop-filter: blur(10px);
    transition: 0.3s ease;
}

input:focus,
textarea:focus,
select:focus {
    border-color: #fff;
    box-shadow: 0 0 10px rgba(255,255,255,0.6);
    outline: none;
}

.skills-group {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-top: 8px;
}

.skills-group label {
    padding: 6px 12px;
    border-radius: 30px;
    background: rgba(255, 255, 255, 0.35);
    border: 1px solid rgba(255, 255, 255, 0.55);
    font-size: 13px;
    color: #222;
    cursor: pointer;
    backdrop-filter: blur(6px);
    transition: 0.3s ease;
}

.skills-group label:hover {
    background: rgba(255, 255, 255, 0.55);
}

input[type="checkbox"] {
    margin-right: 5px;
}

input[type="submit"] {
    width: 100%;
    padding: 14px;
    margin-top: 25px;
    background: rgba(255, 255, 255, 0.55);
    color: #000;
    font-size: 16px;
    font-weight: 600;
    border: 1px solid rgba(255, 255, 255, 0.7);
    border-radius: 10px;
    backdrop-filter: blur(10px);
    cursor: pointer;
    transition: 0.3s;
}

input[type="submit"]:hover {
    background: rgba(255, 255, 255, 0.8);
    transform: translateY(-2px);
}

.message-container p {
    margin-top: 20px;
    text-align: center;
    color: #ff0033;
    font-weight: bold;
}

</style>

</head>
<body>

<c:forEach var="val" items="${details}">

<div class="resume-container">

<form action="update" method="post">
    <h2>Update Resume</h2>

    <label>Full Name:</label>
    <input type="text" name="name" value="${val.name}" required>

    <label>Email:</label>
    <input type="email" name="email" value="${val.email}" required>

    <label>Phone:</label>
    <input type="text" name="phone" value="${val.phone}" required>

    <label>Skills:</label>
    <div class="skills-group">
        <label><input type="checkbox" name="skills" value="Java"> Java</label>
        <label><input type="checkbox" name="skills" value="Python"> Python</label>
        <label><input type="checkbox" name="skills" value="HTML"> HTML</label>
        <label><input type="checkbox" name="skills" value="CSS"> CSS</label>
        <label><input type="checkbox" name="skills" value="JavaScript"> JavaScript</label>
        <label><input type="checkbox" name="skills" value="C++"> C++</label>
    </div>

    <label>College Name:</label>
    <input type="text" name="college" placeholder="Enter college" required>

    <label>Degree:</label>
    <select name="degree" required>
        <option value="">Select Degree</option>
        <option value="B.Tech">B.Tech</option>
        <option value="B.Sc">B.Sc</option>
        <option value="MCA">MCA</option>
        <option value="Diploma">Diploma</option>
    </select>

    <label>Graduation Year:</label>
    <select name="year" required>
        <option value="">Select Year</option>
        <option>2025</option>
        <option>2024</option>
        <option>2023</option>
        <option>2022</option>
    </select>

    <label>Experience / Internship:</label>
    <input type="text" name="company" placeholder="Enter company">

    <label>Duration:</label>
    <input type="text" name="duration" placeholder="Enter duration">

    <label>Projects:</label>
    <input type="text" name="project" value="${val.project}" required>

    <label>Project Description:</label>
    <textarea name="projectDesc" rows="3">${val.projdesc}</textarea>

    <label>Certificates:</label>
    <textarea name="certificates" rows="3">${val.certificates}</textarea>

    <label>Achievements:</label>
    <textarea name="achievements" rows="3">${val.achievements}</textarea>

    <input type="submit" value="Update Resume">
</form>

</div>
</c:forEach>

<div class="message-container">
    <c:if test="${not empty msge}">
        <p>${msge}</p>
    </c:if>
</div>

</body>
</html>

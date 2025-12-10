<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Resume</title>

<style>
    body {
        font-family: 'Poppins', Arial, sans-serif;
        background: linear-gradient(135deg, #d9eaff, #f6f9ff);
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: flex-start;
        min-height: 100vh;
        padding-top: 40px;
    }

    .form-container {
        width: 440px;
        background: #ffffff;
        border-radius: 15px;
        padding: 30px 35px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.15);
        animation: fadeIn 0.8s ease;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    h2 {
        text-align: center;
        color: #1a73e8;
        margin-bottom: 20px;
        font-size: 26px;
        font-weight: 600;
    }

    label {
        display: block;
        font-weight: 600;
        margin-bottom: 6px;
        color: #333;
    }

    input, select, textarea {
        width: 100%;
        padding: 12px;
        margin-bottom: 18px;
        border: 1px solid #bcd7f7;
        border-radius: 8px;
        font-size: 14px;
        background: #f9fcff;
        transition: 0.3s ease;
    }

    input:focus,
    textarea:focus,
    select:focus {
        border-color: #1a73e8;
        box-shadow: 0px 0px 6px rgba(26, 115, 232, 0.4);
        outline: none;
    }

    .skills-group {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
        margin-bottom: 18px;
    }

    .skills-group label {
        background: #eaf3ff;
        border: 1px solid #bcd7f7;
        padding: 6px 10px;
        border-radius: 8px;
        font-size: 13px;
        cursor: pointer;
    }

    .skills-group input {
        margin-right: 5px;
    }

    input[type="submit"] {
        width: 100%;
        background: #1a73e8;
        color: white;
        font-weight: 600;
        font-size: 16px;
        border: none;
        padding: 14px;
        border-radius: 10px;
        cursor: pointer;
        transition: 0.3s ease;
        box-shadow: 0px 4px 12px rgba(26, 115, 232, 0.4);
    }

    input[type="submit"]:hover {
        background: #0c47a1;
        box-shadow: 0px 6px 18px rgba(12, 71, 161, 0.4);
    }
</style>

</head>
<body>

<div class="form-container">

<form action="create" method="post">
    <h2>Create Resume</h2>

    <label>Full Name:</label>
    <input type="text" name="name" placeholder="Enter your full name" required>

    <label>Email:</label>
    <input type="email" name="email" placeholder="Enter your email" required>

    <label>Phone:</label>
    <input type="text" name="phone" placeholder="Enter your phone number" required>

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
    <input type="text" name="college" placeholder="Enter your college name" required>

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
    <input type="text" name="company" placeholder="Ex: Microsoft / ABC Company">

    <label>Duration:</label>
    <input type="text" name="duration" placeholder="Ex: 3 Months">

    <label>Projects:</label>
    <input type="text" name="project" placeholder="Enter project title" required>

    <label>Project Description:</label>
    <textarea name="projectDesc" rows="4" placeholder="Describe your project in detail" required></textarea>

    <label>Certificates:</label>
    <textarea name="certificates" rows="3" placeholder="Enter certifications like Java, Python, AWS"></textarea>

    <label>Achievements:</label>
    <textarea name="achievements" rows="3" placeholder="Enter your achievements or awards"></textarea>

    <input type="submit" value="Generate Resume">
</form>

</div>

</body>
</html>

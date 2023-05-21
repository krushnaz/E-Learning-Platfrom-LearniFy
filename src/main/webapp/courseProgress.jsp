<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course Progress</title>
</head>
<body>
<c:set var="progressList" value="${requestScope.progressList}" />

<!-- Check if the progressList is not null and not empty -->
<c:if test="${not empty progressList}">
  <h2>Course Progress</h2>
  <table>
    <tr>
      <th>Course Name</th>
      <th>Progress</th>
    </tr>
    <!-- Iterate over each item in the progressList and display the course name and progress -->
    <c:forEach items="${progressList}" var="progress">
      <tr>
        <td>${progress.courseName}</td>
        <td>${progress.progress}%</td>
      </tr>
    </c:forEach>
  </table>
<!-- If the progressList is null or empty, display a message indicating that no progress has been made -->
</c:if>
<c:if test="${empty progressList}">
  <p>No progress has been made yet.</p>
</c:if>
</body>
</html>

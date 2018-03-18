<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="<a class="vglnk" href="http://www.springframework.org/tags/form"%" rel="nofollow"><span>http</span><span>://</span><span>www</span><span>.</span><span>springframework</span><span>.</span><span>org</span><span>/</span><span>tags</span><span>/</span><span>form</span><span>"%</span></a>>
<%@ taglib prefix="c" uri="<a class="vglnk" href="http://java.sun.com/jsp/jstl/core" rel="nofollow"><span>http</span><span>://</span><span>java</span><span>.</span><span>sun</span><span>.</span><span>com</span><span>/</span><span>jsp</span><span>/</span><span>jstl</span><span>/</span><span>core</span></a>" %>
 
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="/html/h1.css">
    <title>Employee Registration Form</title>
 
<style>
 
    .error {
        color: #ff0000;
    }
</style>
 
</head>
 
<body>
 
    <h2>Registration Form</h2>
  
    <form:form method="POST" modelAttribute="employee">
        <form:input type="hidden" path="id" id="id"/>
        <table>
            <tr>
                <td><label for="name">Name: </label> </td>
                <td><form:input path="name" id="name"/></td>
                <td><form:errors path="name" cssClass="error"/></td>
            </tr>
         
            <tr>
                <td><label for="joiningDate">Joining Date: </label> </td>
                <td><form:input path="joiningDate" id="joiningDate"/></td>
                <td><form:errors path="joiningDate" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td><label for="salary">Salary: </label> </td>
                <td><form:input path="salary" id="salary"/></td>
                <td><form:errors path="salary" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td><label for="ssn">SSN: </label> </td>
                <td><form:input path="ssn" id="ssn"/></td>
                <td><form:errors path="ssn" cssClass="error"/></td>
            </tr>
     
            <tr>
                <td colspan="3">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register"/>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </form:form>
    <br/>
    <br/>
    Go back to <a href="<c:url value='/list' />">List of All Employees</a>
</body>
</html>
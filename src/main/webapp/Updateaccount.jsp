<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int balanceamount=25000;
int accno=12345014;
%>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/bankdb" user="Devi" password="Dhanam"></sql:setDataSource>
<sql:update dataSource="${db}" var="count">  
   UPDATE Customer SET Cbal= ? WHERE Caccno = ? ;
   <sql:param value="<%=balanceamount%>"/>  
   <sql:param value="<%=accno%>" />  
</sql:update> 
<c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Updated
            successfully.</font>
              <a href="index.jsp">Go Home</a>          
        </c:if>
</body>
</html>
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
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/bankdb" user="Devi" password="Dhanam"></sql:setDataSource>

<sql:transaction dataSource="${db }">
<sql:update var="count">insert into customer(cname,cuname,cpwd,cmobno,cadd,cbal) values('Pinky','Pink','pink',9942440818,'Chennai',30000);</sql:update>
<sql:update var="count">insert into customer(cname,cuname,cpwd,cmobno,cadd,cbal)  values('Rosy','Rose','rose',9841553985,'Trichy',23000);</sql:update>
<sql:update var="count">insert into customer(cname,cuname,cpwd,cmobno,cadd,cbal)  values('Tintu','Tintu','tintu',9994285550,'Kovai',40000);</sql:update>
</sql:transaction>

<sql:query dataSource="${db}" var="rs">
select*from Customer;</sql:query>
<table border="2" width="70%" bgColor="aqua">
<tr>
<th>Customer Name</th>
<th>Customer Username</th>
<th>Customer Password</th>
<th>Customer Mobileno</th>
<th>Customer Address</th>
<th>Customer AccountNo</th>
<th>Customer Balance</th>
</tr>
<c:forEach var="stdd" items="${rs.rows }">
<tr>
<td>${stdd.Cname}</td>
<td>${stdd.Cuname }</td>
<td>${stdd.Cpwd }</td>
<td>${stdd.Cmobno }</td>
<td>${stdd.Cadd}</td>
<td>${stdd.Caccno }</td>
<td>${stdd.Cbal }</td>
</tr></c:forEach></table>
<c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Inserted
            successfully.</font>
              <a href="index.jsp">Go Home</a>          
        </c:if>
</body>
</html>
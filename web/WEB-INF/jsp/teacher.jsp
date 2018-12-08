<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: H
  Date: 2018/12/6
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
teacher
<table>
<%--<c:forEach items="${ClassList}" var="Class" varStatus="vs">--%>
        <%--<tr>--%>
            <%--<td align="center">${Class.class_name}</td>--%>
            <%--<td align="center">${Class.class_des}</td>--%>
            <%--<td align="center">${Class.create_user_id}</td>--%>
            <%--<td align="center">${Class.create_user_name}</td>--%>
            <%--<td align="center">${Class.create_time}</td>--%>
            <%--<td align="center">${Class.end_time}</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>
    <
    <form action="${pageContext.request.contextPath}/classList" method="get">
        <c:forEach items="${ClassList}" var="class">
            <tr>
                <td>${class.class_name}</td>
            </tr>
        </c:forEach>
    </form>

</table>
</body>
</html>

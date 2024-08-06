<%--
  Created by IntelliJ IDEA.
  User: minhquan
  Date: 05/08/2024
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Category</title>
</head>
<body>
<center>
    <h1>Edit Category</h1>
    <h2>
        <a href="category?action=category">List All Category</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Category
                </h2>
            </caption>
            <c:if test="${category != null}">
                <input type="hidden" name="categoryId" value="<c:out value='${category.categoryId}' />"/>
            </c:if>
            <tr>
                <th>Name:</th>
                <td>
                    <input type="text" name="name" size="45" value="<c:out value='${category.name}' />" required/>
                </td>
            </tr>
            <tr>
                <th>Note:</th>
                <td>
                    <input name="notes" rows="4" cols="50" value="<c:out value='${category.notes}'/>" required/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>


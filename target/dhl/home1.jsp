<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2/5/2021
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--        <meta charset="utf-8">--%>
<%--        <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--        <title>shipment info </title>--%>
<%--        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">--%>
</head>
<body>

<div class="section">
    <div class="field">
        <label class="label is-large"> shipment number is ${shipmentNumber}</label>
        <% request.getAttribute("shipmentNumber");%>
    </div>
    <div class="field">
        <label class="label is-large"> status message is ${statusMessage}</label>
    </div>
    <div class="field">
        <a href="${labelUrl}"> label url here</a>
    </div>
</div>
</body>
</html>

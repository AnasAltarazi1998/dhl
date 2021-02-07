<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>shipment info </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
    </head>
    <body>
        <div class="section">
            <div class="field">
                <label class="label is-large"> shipment number is <% request.getAttribute("name");%></label>
            </div>
            <div class="field">
                <label class="label is-large"> status message is ${statusMessage}</label>
            </div>
            <div class="field">
                <a href="${labelUrl}"> label url here</h3>
            </div>
        </div>
    </body>
</html>

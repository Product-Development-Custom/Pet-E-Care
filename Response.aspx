<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Response.aspx.cs" Inherits="Pet_E_Care.Response" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color:black;
        }
        .thank-you-message {
            font-size: 6vw; /* Responsive font size */
            font-weight: bold;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="thank-you-message">
            Thank you for your response
        </div>
    </form>
</body>
</html>


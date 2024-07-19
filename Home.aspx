<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pet_E_Care.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paw-Fessionals</title>
    <meta charset="utf-8" />
    <style>
        body, html {
            padding: 0;
            margin: 0;
            font-family: Arial, sans-serif;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('backgroundpetimage.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        .imgcontainer {
            text-align: center;
            margin: 1.5rem 0 0.75rem 0;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .imgc {
            height: 7.5rem;
            width: 7.5rem;
            border-radius: 50%;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 90%;
            max-width: 400px;
            text-align: center;
        }

        .form-group {
            margin: 20px 0;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .radio-group {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

            .radio-group input[type="radio"] {
                margin-right: 10px;
            }

            .radio-group label {
                margin-right: 30px;
                font-size: 18px;
            }

        .submit-btn {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            margin-right: 10px;
        }

            .submit-btn:hover {
                background-color: #218838;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <center>
                <img src="Logopetcare.jpg" class="imgc" />
                <h1>Paw-Fessionals</h1>
            </center>
            <div class="form-group">
                <label for="name">Name:</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter Your Full Name" />
            </div>
            <div class="form-group">
                <label for="contactNumber">Contact Number:</label>
                <asp:TextBox ID="txtContactNumber" runat="server" CssClass="form-control" TextMode="Number" placeholder="Enter Your Phone Number" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContactNumber" ErrorMessage="Invalid Phone Number" ForeColor="Red" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="category">Category:</label>
                <div class="radio-group">
                    <asp:RadioButton ID="rbDog" runat="server" GroupName="category" Text="Dog" Checked="true" />
                    <asp:RadioButton ID="rbCat" runat="server" GroupName="category" Text="Cat" />
                    <asp:RadioButton ID="rbBird" runat="server" GroupName="category" Text="Bird" />
                </div>
            </div>
            <center>
                <asp:Label runat="server" ID="lbl3" ForeColor="Red"></asp:Label><br />
                <br />
            </center>
            <asp:Button ID="btnSubmit" runat="server" Text="Go" CssClass="submit-btn" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facilities.aspx.cs" Inherits="Pet_E_Care.Facilities" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet Form</title>
    <style>
        .breed-container {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .breed-container img {
            width: 100px;
            height: 100px;
            margin-right: 10px;
        }

        @media screen and (max-width: 600px) {
            .breed-container {
                flex-direction: column;
                align-items: flex-start;
            }

            .breed-container img {
                margin-bottom: 5px;
            }
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
        }

        .product-item {
            flex: 1 0 21%;
            box-sizing: border-box;
            padding: 10px;
            margin: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }

        .product-image {
            width: 100px;
            height: 100px;
        }

        @media (max-width: 600px) {
            .product-item {
                flex: 1 0 46%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Please select your pet's breed</h2>
            <hr>
            <div class="container body-content">
                <div class="product-list">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="product-item">
                                <div class="product-image-container">
                                    <img class="product-image" src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Name") %>' /><br />
                                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="PetGroup" Text='<%# Eval("Name") %>' />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <h2>Please select the service</h2>
                <asp:CheckBoxList ID="ServiceCheckBoxList" runat="server">
                    <asp:ListItem Text="Day-care" Value="Day-care" />
                    <asp:ListItem Text="Grooming" Value="Grooming" />
                    <asp:ListItem Text="Pet training" Value="Pet training" />
                    <asp:ListItem Text="Pet body wash" Value="Pet body wash" />
                </asp:CheckBoxList>

                <asp:Label ID="DayCareLabel" runat="server" Text="Day-care (from DD/MM to DD/MM):" Visible="false"></asp:Label>
                <asp:TextBox ID="DayCareTextBox" runat="server" Visible="false"></asp:TextBox>

                <asp:Label ID="GroomingLabel" runat="server" Text="Grooming (from to am/pm):" Visible="false"></asp:Label>
                <asp:TextBox ID="GroomingTextBox" runat="server" Visible="false"></asp:TextBox>

                <asp:Label ID="TrainingLabel" runat="server" Text="Pet training (Day):" Visible="false"></asp:Label>
                <asp:TextBox ID="TrainingTextBox" runat="server" Visible="false"></asp:TextBox>

                <asp:Label ID="BodyWashLabel" runat="server" Text="Pet body wash:" Visible="false"></asp:Label>
                <asp:TextBox ID="BodyWashTextBox" runat="server" Visible="false"></asp:TextBox>

                <asp:Button ID="SubmitButton" runat="server" Text="Submit" />
            </div>
    </form>
</body>
</html>

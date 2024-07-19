<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facilities.aspx.cs" Inherits="Pet_E_Care.Facilities" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pet Form</title>
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

        .form-section {
            margin-bottom: 20px;
        }

        .breed-section {
            margin-left: 20px;
        }

        .breed-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .breed-photo {
            width: 50px;
            height: 50px;
            background-color: #f0f0f0;
            margin-right: 10px;
        }

        .container { 
            margin-top:100px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 90%;
            max-width: 530px;
            text-align: center;
        }

        input[type="text"], input[type="number"] {
            width: 20%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <asp:Panel ID="pnlBreeds" runat="server">
                    <h2>Please Select Your Pet's Breed</h2>
                    <div class="form-section" id="dogBreeds" runat="server" visible="false">
                        <div class="breed-section">
                            <div class="breed-item">
                                <img class="breed-photo" src="https://images.unsplash.com/photo-1558788353-f76d92427f16" alt="German Shepherd" />
                                <asp:RadioButton ID="rbGermanShepherd" runat="server" GroupName="DogBreeds" Text="German Shepherd" Checked="true" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://images.unsplash.com/photo-1560807707-8cc77767d783" alt="Shitzu" />
                                <asp:RadioButton ID="rbShitzu" runat="server" GroupName="DogBreeds" Text="Shitzu" />
                            </div>
                            <div class="breed-item">
                                <div class="breed-photo"></div>
                                <asp:RadioButton ID="rbOtherDog" runat="server" GroupName="DogBreeds" Text="Other" />
                            </div>
                        </div>
                    </div>
                    <div class="form-section" id="catBreeds" runat="server" visible="false">
                        <div class="breed-section">
                            <div class="breed-item">
                                <img class="breed-photo" src="https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Cat Ragdoll" />
                                <asp:RadioButton ID="rbCatBreed1" runat="server" GroupName="CatBreeds" Text="Ragdoll" Checked="true" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Cat Ragdoll" />
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="CatBreeds" Text="Persian" />
                            </div>
                            <div class="breed-item">
                                <div class="breed-photo"></div>
                                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="CatBreeds" Text="Other" />
                            </div>
                        </div>
                    </div>

                    <div class="form-section" id="birdBreeds" runat="server" visible="false">
                        <div class="breed-section">
                            <div class="breed-item">
                                <img class="breed-photo" src="https://images.pexels.com/photos/349758/hummingbird-bird-birds-349758.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Bird Breed 1" />
                                <asp:RadioButton ID="rbBirdBreed1" runat="server" GroupName="BirdBreeds" Text="Breed 1" Checked="true" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://images.pexels.com/photos/349758/hummingbird-bird-birds-349758.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Bird Breed 1" />
                                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="BirdBreeds" Text="Breed 1" />
                            </div>
                            <div class="breed-item">
                                <div class="breed-photo"></div>
                                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="BirdBreeds" Text="Other" />
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <hr />
                <div class="form-section">
                    <h2>Please select the service</h2>
                    <div>
                        <label for="DayCare1">Day Care:</label>
                        <asp:TextBox ID="txtDayCare" runat="server" CssClass="masked-input" placeholder="DD/MM" />
                        <label for="txtDayCare2">TO</label>
                        <asp:TextBox ID="txtDayCare1" runat="server" placeholder="DD/MM" />
                    </div>
                    <div>
                        <label for="name">Grooming:</label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="HH/MM" />
                        <label for="txtDayCare3">TO</label>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="HH/MM" />
                        <asp:DropDownList runat="server">
                            <asp:ListItem Text="AM" />
                            <asp:ListItem Text="PM" />
                        </asp:DropDownList>
                    </div>
                    <div>
                        <label for="name">Pet Training:</label>
                        <asp:TextBox ID="txtPetTraining" runat="server" TextMode="Number" />
                    </div>
                    <div>
                        <label for="name">Pet BodyWash:</label>
                        <asp:TextBox ID="txtPetBodyWash" CssClass="form-control" runat="server" />
                    </div>
                    <center>
                        <br />
                        <asp:Label runat="server" ID="lbl3" ForeColor="Red"></asp:Label><br />
                        <br />
                    </center>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="submit-btn" OnClick="btnSubmit_Click" />
                </div>
            </div>
            <hr />
                <marquee behavior="scroll" direction="left" scrollamount="5">
                    This Website Is Developed By MohammadAvim Parasara
                </marquee>
        </div>
    </form>
</body>
</html>

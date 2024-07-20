<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facilities.aspx.cs" Inherits="Pet_E_Care.Facilities" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paw-Fessionals</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body, html {
            padding: 0;
            margin: 0;
            font-family: Arial, sans-serif;
            height: 120%;
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
            width: 150px;
            height: 90px;
            background-color: #f0f0f0;
            margin-right: 10px;
        }

        .container {
            margin-top: 400px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 100%;
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
                                <img class="breed-photo" src="https://www.dogster.com/wp-content/uploads/2013/09/siberian-husky-puppy-on-grass_ANURAK-PONGPATIMET_Shutterstock.jpg" alt="Husky" />
                                <asp:RadioButton ID="rbGermanShepherd" runat="server" GroupName="DogBreeds" Text="Husky" Checked="true" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://hips.hearstapps.com/hmg-prod/images/labrador-puppy-royalty-free-image-1626252338.jpg?crop=0.667xw:1.00xh;0.173xw,0&resize=2048:*" alt="Labrador" />
                                <asp:RadioButton ID="rbShitzu" runat="server" GroupName="DogBreeds" Text="Labrador" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://image.petmd.com/files/styles/978x550/public/2022-10/pomeranian.jpeg?w=1080&q=75" alt="Pomerian" />
                                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="DogBreeds" Text="Pomerian" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://www.forbes.com/advisor/wp-content/uploads/2023/11/shih-tzu-temperament.jpeg.jpg" alt="shih-tzu" />
                                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="DogBreeds" Text="shih-tzu" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://blog.gudog.co.uk/wp-content/uploads/2023/11/german-sherperd.jpeg" alt="German Shepherd" />
                                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="DogBreeds" Text="German Shepherd" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://hips.hearstapps.com/hmg-prod/images/small-dogs-6626cf74dfe17.jpg?crop=0.579xw:0.868xh;0.197xw,0.0337xh&resize=640:*" alt="Others" />
                                <asp:RadioButton ID="rbOtherDog" runat="server" GroupName="DogBreeds" Text="Others" />
                            </div>
                        </div>
                    </div>
                    <div class="form-section" id="catBreeds" runat="server" visible="false">
                        <div class="breed-section">
                            <div class="breed-item">
                                <img class="breed-photo" src="https://d3544la1u8djza.cloudfront.net/APHI/Blog/2024/January/munchkin-cat-breed.jpg" alt="Munchkin" />
                                <asp:RadioButton ID="rbCatBreed1" runat="server" GroupName="CatBreeds" Text="Munchkin" Checked="true" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://mummycat.in/wp-content/uploads/2018/12/persian-cat-600x600.jpg" alt="Persian Cat" />
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="CatBreeds" Text="Persian Cat" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://cats.com/wp-content/uploads/2020/10/The-British-Longhair.jpg" alt="British Longhair" />
                                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="CatBreeds" Text="British Longhair" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaGjlBBkhO1BeKzabyuWTuDf9EoJyyQy2TTO6tXoTaoCJn4fFMtz--ezZsBwbPPoBSjwc&usqp=CAU" alt="American Longhair" />
                                <asp:RadioButton ID="RadioButton7" runat="server" GroupName="CatBreeds" Text="American Longhair" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://www.thesprucepets.com/thmb/aWULXjTWxZbCJ4GixA7JMw8K15w=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-1189893683-e0ff70596b3b4f0687ba573e5a671f74.jpg" alt="Maine coon" />
                                <asp:RadioButton ID="RadioButton8" runat="server" GroupName="CatBreeds" Text="Maine Coon" />
                            </div>
                            <div class="breed-item">
                                <img class="breed-photo" src="https://www.purina.co.uk/sites/default/files/2023-03/Teaser%20Pedigree%20Cats.jpg" alt="Others" />
                                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="CatBreeds" Text="Others" />
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
                This Website Is Developed By MohammadAvim Parasara From Gujarat
           
            </marquee>
        </div>
    </form>
</body>
</html>

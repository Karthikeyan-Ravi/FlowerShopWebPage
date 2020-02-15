<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecurityPage.aspx.cs" Inherits="FlowerShopWebPage.SecurityPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="SecurePageStyle.css" />
    <title></title>
    <script src="Validation.js"></script>
</head>
<body>
    <h1>FLOWER SHOP ONLINE</h1>
    <h2></h2>
    <form id="form1" runat="server">
    <div class="Row">
        <div class="Column">
           <asp:Image runat="server" CssClass="FlowerImage" ImageUrl="~/Image/img.png" ID="flowerImage"/>
        </div>
        <div class="ColumnAfter">
             <p class="h3">Secure Payment Page</p>
            <div class="RowForm">
                <div class="ColumnForm">
                    <p><strong>Select Language</strong> </p>
                    <p>Payment method</p>
                    <p>Description</p>
                    <p>Amount</p>
                </div>
                <div class="ColumnForm3">
                    <p><asp:DropDownList ID="language" CssClass="DropDownList" runat="server"><asp:ListItem Value="English">English</asp:ListItem><asp:ListItem Value="French">French</asp:ListItem><asp:ListItem Value="German">German</asp:ListItem></asp:DropDownList></p>
                    <p><strong>Visa</strong> </p>
                    <p><strong>Item ordered</strong></p>
                    <p><strong>£100.00</strong></p>
                </div>   
                <div class="ColumnForm4">
                    <p><asp:Image runat="server" ImageUrl="~/Image/logo.png" cssClass="VisaImage"/></p>
                </div>
           </div>
            <div class="form">
              <p class="TitleCard">Card details</p> 
            <p>You must fill in fields marked with *</p>
            <div class="RowForm">
                <div class="ColumnForm">
                    <p>* Card number</p>
                    <p>* <a href="https://www.cvvnumber.com/">Security code</a></p>
                    <p>* Expiry date</p>
                    <p  class="ParaHeight">* Cardholder's name</p>
                </div>
                <div class="ColumnFormAfter">
                    <p><asp:TextBox CssClass="TextBox" ID="cardNumber" onchange="ValidateCardNumber()" runat="server" required="" ></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox1" ID="securityNumber" onchange="ValidateSecurityCode()" runat="server" required="" TextMode="Password"></asp:TextBox></p>
                    <p><asp:DropDownList ID="month" runat="server" required=""><asp:ListItem Value=""></asp:ListItem><asp:ListItem Value="01">01</asp:ListItem><asp:ListItem Value="02">02</asp:ListItem><asp:ListItem Value="03">03</asp:ListItem><asp:ListItem Value="04">04</asp:ListItem><asp:ListItem Value="05">05</asp:ListItem><asp:ListItem Value="06">06</asp:ListItem><asp:ListItem Value="07">07</asp:ListItem><asp:ListItem Value="08">08</asp:ListItem><asp:ListItem Value="09">09</asp:ListItem><asp:ListItem Value="10">10</asp:ListItem><asp:ListItem Value="11">11</asp:ListItem><asp:ListItem Value="12">12</asp:ListItem></asp:DropDownList> &nbsp <asp:DropDownList ID="year" runat="server" required=""><asp:ListItem Value=""></asp:ListItem><asp:ListItem Value="2021">2021</asp:ListItem><asp:ListItem Value="2022">2022</asp:ListItem><asp:ListItem Value="2023">2023</asp:ListItem><asp:ListItem Value="2024">2024</asp:ListItem><asp:ListItem Value="2025">2025</asp:ListItem><asp:ListItem Value="2026">2026</asp:ListItem><asp:ListItem Value="2027">2027</asp:ListItem><asp:ListItem Value="2028">2028</asp:ListItem></asp:DropDownList></p>
                    <p><asp:TextBox CssClass="TextBox" ID="cardHoldersName" onchange="ValidateCardHolderName()" runat="server"></asp:TextBox></p>
                </div>
            </div> 
             <p class="TitleCard">Cardholder details</p>
             <p>You must fill in fields marked with *</p>
            <div class="RowForm">
                <div class="ColumnForm">
                    <p class="ParaHeight">* Address 1</p>
                    <p class="ParaHeight">&nbsp&nbsp Address 2</p>
                    <p class="ParaHeight">&nbsp&nbsp Address 3</p>
                    <p class="ParaHeight">* Town/City</p>
                    <p class="ParaHeight">&nbsp&nbsp Region</p>
                     <p class="ParaHeight">* Postcode/Zip code</p>
                     <p class="ParaHeight">* Country</p>
                    <p class="ParaHeight">&nbsp&nbsp Telephone</p>
                     <p class="ParaHeight">&nbsp&nbsp Fax</p>
                     <p class="ParaHeight">* Email address</p>
                </div>
                <div class="ColumnFormAfter">
                    <p><asp:TextBox CssClass="TextBox" ID="address1" onchange="ValidateAddress1()" runat="server" required="" ></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox" ID="address2" onchange="ValidateAddress2()" runat="server" ></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox" ID="address3" onchange="ValidateAddress3()" runat="server" ></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox" ID="city" onchange="ValidateTown()" runat="server" required="" ></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox" ID="region" onchange="ValidateRegion()" runat="server" ></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox2" ID="pincode" onchange="ValidatePincode()" runat="server" required="" ></asp:TextBox></p>
                    <p><asp:DropDownList CssClass="DropDownList" ID="country" onchange="ValidateCountry()" runat="server" required=""><asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem><asp:ListItem Value="India">India</asp:ListItem><asp:ListItem Value="United States">United States</asp:ListItem><asp:ListItem Value="China">China</asp:ListItem><asp:ListItem Value="France">France</asp:ListItem><asp:ListItem Value="Germany">Germany</asp:ListItem><asp:ListItem Value="Russia">Russia</asp:ListItem></asp:DropDownList></p>
                    <p><asp:TextBox CssClass="TextBox2" ID="telephone" onchange="ValidateTelephone()" runat="server"></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox2" ID="fax" onchange="ValidateFax()" runat="server"></asp:TextBox></p>
                    <p><asp:TextBox CssClass="TextBox" ID="email" onchange="ValidateEmail()" runat="server" required="" ></asp:TextBox></p>
                </div>
            </div>
                </div>
             <div class="RowForm">
                <div class="ColumnForm">
                    <label><asp:ImageButton runat="server" CssClass="button_image"  ImageUrl="~/image/startAgain.png" ID="StartAgain" /></label><label class="Text" >START AGAIN</label>
                    <p><asp:ImageButton runat="server" CssClass="button_image" ImageUrl="~/image/cancel.png" ID="Cancel" /><label>CANCEL</label></p>
                </div>
                <div class="ColumnFormAfter1">
                   <asp:ImageButton runat="server" CssClass="button_image1" ImageUrl="~/image/gg.png" ID="MakePayment" OnClick="Payment_Click" /> <p class="button_position">MAKE PAYMENT</p>
                </div>
            </div> 
            <hr />
            <label class="label">Refunds and Returns </label>
            <p class="Font">For more information visit our <a style="color:blue" href="http://support.worldpay.com/support/kb/bg/transactionmanagement/tm5100.html">Refunds and Returns Policy.</a></p>
             <div class="RowForm">
                <div class="ColumnForm">
                    <p><asp:Image runat="server" ImageUrl="~/image/pay.png" CssClass="pay" /></p>
                </div>
                <div class="ColumnFormAfter1">
                    <p class="button_position">For help with your payment visit the <a href="https://www.worldpay.com/en-gb/enterprise-support">WorldPay Help .</a></p>
                </div>
            </div> 
        </div>
       
      <div class="ColumnForm5">  
        <p> <asp:ImageButton runat="server" cssclass="help1" ID="ImageButton1" ImageUrl="~/image/gg1.png" width="30px" Height="30px" /></p>
        <asp:ImageButton runat="server" cssclass="help" ID="Help" ImageUrl="~/image/gg1.png" width="30px" Height="30px" />
          </div>
    </div>
    </form>
    <footer>Thank you for shopping at FlowerShop. Have a nice day</footer>
</body>
</html>

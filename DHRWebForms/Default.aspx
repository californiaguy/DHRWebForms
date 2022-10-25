<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DHRWebForms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style.css" rel="stylesheet" />
    <script type ="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };

        const LName = document.getElementById("textBox2");

        LName.addEventListener("input", () => {
            LName.setCustomValidity("");
            LName.checkValidity();

        });
        LName.addEventListener("invalid", () => {
            if (LName.value === "") {
                LName.setCustomValidity("Last Name is Required");
            }
            else {
                LName.setCustomValidity(
                    "Enter a Valid Last Name."
                );
            }
        });

    </script>
    <title>Patient Satisfaction Survey</title>
</head>
<body>
    
    <form id="form1" runat="server">
        <h1>Please give your feedback on your visit</h1>
        <div>
            <label>First Name</label>
            <asp:TextBox ID ="textBox1" runat ="server" required="True"/>
            <asp:RequiredFieldValidator ID ="reqFirstName" runat="server" ControlToValidate="textBox1" CssClass ="error" ErrorMessage="Required Field *" />
            <asp:RegularExpressionValidator ID="reFName" runat="server" ControlToValidate ="textBox1"  ValidationExpression="[a-zA-Z]+" CssClass ="error" ErrorMessage="Please enter a valid name." />
            </div>
    
           <label for="textBox1">Last Name
           <input name="textBox1" title="Last Name" id="textBox2"  pattern="[A-Za-z]+"/>
                </label>

        <div class ="radioLists">
            <p>Courtesy of staff who admitted you</p>
            <asp:RadioButtonList ID="RadioButtonList1" runat ="server" CssClass="buttonList">
                <asp:ListItem Value="1">Very Bad</asp:ListItem>
                <asp:ListItem Value="2">Bad</asp:ListItem>
                <asp:ListItem Value="3">Satisfactory</asp:ListItem>
                <asp:ListItem Value="4">Good</asp:ListItem>
                <asp:ListItem Value="5">Very Good</asp:ListItem>
            </asp:RadioButtonList>
           </div>
        <div class ="radioLists">
            <p>Room cleanliness</p>
            <asp:RadioButtonList ID="RadioButtonList2" runat ="server" CssClass="buttonList">
                <asp:ListItem Value="1">Very Bad</asp:ListItem>
                <asp:ListItem Value="2">Bad</asp:ListItem>
                <asp:ListItem Value="3">Satisfactory</asp:ListItem>
                <asp:ListItem Value="4">Good</asp:ListItem>
                <asp:ListItem Value="5">Very Good</asp:ListItem>
            </asp:RadioButtonList>
            <div class ="radioLists">
            <p>Noise level in and around your room</p>
            <asp:RadioButtonList ID="RadioButtonList3" runat ="server" CssClass="buttonList">
                <asp:ListItem Value="1">Very Bad</asp:ListItem>
                <asp:ListItem Value="2">Bad</asp:ListItem>
                <asp:ListItem Value="3">Satisfactory</asp:ListItem>
                <asp:ListItem Value="4">Good</asp:ListItem>
                <asp:ListItem Value="5">Very Good</asp:ListItem>
            </asp:RadioButtonList>
                </div>
            <div class ="radioLists">
            <p>Quality of food</p>
                <asp:RadioButtonList ID="RadioButtonList4" runat ="server" CssClass="buttonList">
                <asp:ListItem Value="1">Very Bad</asp:ListItem>
                <asp:ListItem Value="2">Bad</asp:ListItem>
                <asp:ListItem Value="3">Satisfactory</asp:ListItem>
                <asp:ListItem Value="4">Good</asp:ListItem>
                <asp:ListItem Value="5">Very Good</asp:ListItem>
            </asp:RadioButtonList>
            </div>
            <div class ="radioLists">
            <p>Friendliness/courtesy of nurses</p>
            <asp:RadioButtonList ID="RadioButtonList5" runat ="server" CssClass="buttonList">
                <asp:ListItem Value="1">Very Bad</asp:ListItem>
                <asp:ListItem Value="2">Bad</asp:ListItem>
                <asp:ListItem Value="3">Satisfactory</asp:ListItem>
                <asp:ListItem Value="4">Good</asp:ListItem>
                <asp:ListItem Value="5">Very Good</asp:ListItem>
            </asp:RadioButtonList>
                </div>
        <div class="button">
            <asp:Button ID="buttonSubmit" runat="server" Text="Submit" OnClick="butnSubmit_Click"/>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DHRWebForms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Style.css" rel="stylesheet" />
    <script type ="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
    <title>Patient Satisfaction Survey</title>
</head>
<body>
    
    <form id="form1" runat="server">
        <h1>Please give your feedback on the visit</h1>
        <div>
            <label>First Name</label>
            <asp:TextBox ID ="textBox1" runat ="server" required="True"/>
            <asp:RequiredFieldValidator ID ="reqFirstName" runat="server" ControlToValidate="textBox1" CssClass ="error" ErrorMessage="Required Field *" />
            <asp:RegularExpressionValidator ID="reFName" runat="server" ControlToValidate ="textBox1"  ValidationExpression="[a-zA-Z]+" CssClass ="error" ErrorMessage="Please enter a valid name."/>
            </div>

            <label>Last Name</label>
            <asp:TextBox ID ="textBox2" runat ="server" required="True"/>
            <asp:RequiredFieldValidator ID ="reqLastName" runat="server" ControlToValidate="textBox2" CssClass ="error" ErrorMessage="Required Field *" />
            <asp:RegularExpressionValidator ID="reLName" runat="server" ControlToValidate ="textBox2"  ValidationExpression="[a-zA-Z]+" CssClass ="error" ErrorMessage="Please enter a valid name." />
           


        <div class ="radioLists">
            <p>Courtesy of the staff who admitted you</p>
            <asp:RadioButtonList ID="RadioButtonList1" runat ="server" CssClass="buttonList">
                <asp:ListItem Value="1">Very Bad</asp:ListItem>
                <asp:ListItem Value="2">Bad</asp:ListItem>
                <asp:ListItem Value="3">Satisfactory</asp:ListItem>
                <asp:ListItem Value="4">Good</asp:ListItem>
                <asp:ListItem Value="5">Very Good</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID ="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList1" CssClass ="error" ErrorMessage="Required Field *" />
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
            <asp:RequiredFieldValidator ID ="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList2" CssClass ="error" ErrorMessage="Required Field *" />
            </div>
            <div class ="radioLists">
            <p>Noise level in and around your room</p>
            <asp:RadioButtonList ID="RadioButtonList3" runat ="server" CssClass="buttonList">
                <asp:ListItem Value="1">Very Bad</asp:ListItem>
                <asp:ListItem Value="2">Bad</asp:ListItem>
                <asp:ListItem Value="3">Satisfactory</asp:ListItem>
                <asp:ListItem Value="4">Good</asp:ListItem>
                <asp:ListItem Value="5">Very Good</asp:ListItem>
            </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID ="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList3" CssClass ="error" ErrorMessage="Required Field *" />
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
                <asp:RequiredFieldValidator ID ="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList4" CssClass ="error" ErrorMessage="Required Field *" />
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
                <asp:RequiredFieldValidator ID ="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList5" CssClass ="error" ErrorMessage="Required Field *" />
                </div>
        <div class="button">
            <asp:Button ID="buttonSubmit" runat="server" Text="Submit" OnClick="butnSubmit_Click"/>
        </div>
    </form>
</body>
</html>

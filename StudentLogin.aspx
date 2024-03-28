<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="StudentLogin.aspx.cs" Inherits="StudentLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .auto-style9 {
            width: 27%;
            margin-left:35%;
            font-size:15pt;
           /* border:1px solid black;
            background-color:white;*/
        }
        .auto-style10 {
                width: 250px;
            }
        .button:hover
        {
            background-color:#008080;
            cursor:pointer;
            color:white;
        }
        .signup:hover
        {
            background-color:#008080;
            cursor:pointer;
            color:white;
        }
        .auto-style11 {
            width: 80px;
            height: 80px;
            border-radius:20px;
            margin-left:600px;
        }
            .auto-style12 {
                width: 400px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <img alt="" class="auto-style11" src="image/studentlogin.jfif" /><br />
    <table cellspacing="1" class="auto-style9">
        <tr>
            <td colspan="2" style="color:white;font-size:17pt;font-weight:bold; padding-bottom:10px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*Student Login*
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="padding-bottom:20px">&nbsp;Email Id</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="225px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Email Id Proper Format" Font-Size="14pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="padding-bottom:20px">Password</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="225px" TextMode="Password"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" Height="30px" style="font-weight: 700" Text="LOGIN" Width="75px" class="button" OnClick="Button1_Click" />
            </td>
            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="30px" style="font-weight: 700" Text="FORGOT PASSWORD" class="button" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style12">&nbsp;
                <br />
&nbsp;<asp:Button ID="Button3" runat="server" Height="30px" style="font-weight: 700" Text="SIGN UP" Width="82px" class="button" PostBackUrl="~/SignUp.aspx" />
                &nbsp;<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>


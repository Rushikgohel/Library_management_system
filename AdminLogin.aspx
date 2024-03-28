<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

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
            width: 93px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
    <img alt="" class="auto-style11" src="image/alogin.jfif" /><br />
    <table cellspacing="1" class="auto-style9">
        <tr>
            <td colspan="2" style="color:white;font-size:17pt;font-weight:bold; padding-bottom:10px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*Admin Login*
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="padding-bottom:20px">Username</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="225px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="padding-bottom:20px">Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="225px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="30px" style="font-weight: 700" Text="LOGIN" Width="75px" class="button" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;
                <br />
&nbsp;&nbsp;<br />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>


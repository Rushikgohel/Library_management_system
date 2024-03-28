<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPass.aspx.cs" Inherits="ForgotPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
         .auto-style9 {
            width: 54%;
            margin-left:35%;
            font-size:15pt;
           /* border:1px solid black;
            background-color:white;*/
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
             width: 98px;
         }
         .auto-style13 {
             width: 92px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
    <img alt="" class="auto-style11" src="image/studentlogin.jfif" /><br />
    <table cellspacing="1" class="auto-style9">
        <tr>
            <td colspan="2" style="color:white;font-size:17pt;font-weight:bold; padding-bottom:10px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*Forgot Password*
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="padding-bottom:20px">Email Id</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="225px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Email Id Proper Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="padding-bottom:20px">Password</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="225px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"> Conform Password</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="225px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Is Not Match" ForeColor="Red"></asp:CompareValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><br />
        </tr>
        <tr>
            <td class="auto-style13">
&nbsp;&nbsp;
                <br />
                <asp:Button ID="Button1" runat="server" Height="30px" style="font-weight: 700" Text="SUBMIT" Width="75px" class="button" OnClick="Button1_Click" />
                <br />
                <br />
                </td>
            <td class="auto-style12">&nbsp;
                <br />
&nbsp;&nbsp;<br />
            </td>
        </tr>
    </table>
</asp:Content>


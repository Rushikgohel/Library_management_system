<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .auto-style9 {
            width: 50%;
           /* border-style: solid;
            border-width: 1px;*/
            margin-left:15%;
            padding:20px;
            font-size:15pt;
        }
        .auto-style10 {
            width: 112px;
        }
        #TextArea1 {
            width: 227px;
        }
        .auto-style11 {
            text-decoration: underline;
            font-size: 17pt;
        }
        .button:hover{
            background-color:#008080;
            cursor:pointer;
            color:white;
        }
        .auto-style12 {
            font-size: 17pt;
        }
	.contact{
            height:350px;
            width:400px;
            margin-top:-370px;
            margin-left:65%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table cellspacing="1" class="auto-style9">
        <tr>
            <td colspan="2" style="color:white;font-size:15pt;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style12">*</span><span class="auto-style11">Sent Your Message</span><span class="auto-style12">*</span><br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="padding-bottom:20px;">Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="225px" Height="20px" placeholder="Enter Your Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="padding-bottom:20px;">Email</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="225px" Height="20px" placeholder="Enter Your Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Email Id Proper Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="padding-bottom:20px;">Contact No</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="225px" Height="20px" placeholder="Enter Your Contact No"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Contact Proper Format" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Message</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="225px" placeholder="Enter Your Contact No" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <br />
            </td>
            <td>
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="10pt" Height="30px" Text="SUBMIT" Width="75px" class="button" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>       
        </tr>
    </table>
    <br />
    <div class="contact">
        <br />
        <h2 style="text-decoration:underline;color:white;">Contact:-</h2>
        <p style="font-weight:bold;color:white;font-size:20px;">Name : Ghiya Jaydip <br /> Contact No : 7574009725 <br /> Email :    jaydipghiya@gmail.com <br /></p>
    </div>
    <br /><br /><br /><br /><br /><br /><br /><br />
    <div class="contact">
        <br />
        <h2 style="text-decoration:underline;color:white;">Contact:-</h2>
        <p style="font-weight:bold;color:white;font-size:20px;">Name : Gohel Rushik<br />Contact No :6547821564 <br /> Email :    rushikgohel@gmail.com <br /></p>
    </div>


</asp:Content>


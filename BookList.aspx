<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="BookList.aspx.cs" Inherits="BookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 50%;
            margin-left:37%;
        }
        .auto-style10 {
            width: 97px;
        }
        .auto-style11 {
            width: 97px;
            height: 25px;
        }
        .auto-style12 {
            height: 25px;
        }
        .button:hover{
            background-color:#008080;
            cursor:pointer;
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table cellspacing="1" class="auto-style9">
        <tr>
            <td class="auto-style11" style="font-size:13pt;font-weight:bold;">Search Book</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="11pt" Height="27px" Text="Search" Width="72px" class="button" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" Font-Size="14pt" ForeColor="#333333" HorizontalAlign="Center" ShowFooter="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="bookname" HeaderText="Book Name" SortExpression="bookname" />
            <asp:BoundField DataField="bookauthor" HeaderText="Book Author" SortExpression="bookauthor" />
            <asp:BoundField DataField="bookquantity" HeaderText="Book Quantity" SortExpression="bookquantity" />
            <asp:ImageField DataImageUrlField="book_image" HeaderText="Book Image">
                <ControlStyle Height="80px" Width="100px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book] WHERE ([bookname] = @bookname)">
        <SelectParameters>
            <asp:SessionParameter Name="bookname" SessionField="bookname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <h2 style="margin-left:43%; text-decoration:underline; "> *<span class="auto-style14">All Book</span>*</h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" Font-Size="14pt" ForeColor="#333333" HorizontalAlign="Center" ShowFooter="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="bookname" HeaderText="Book Name" SortExpression="bookname" />
            <asp:BoundField DataField="bookauthor" HeaderText="Book Author" SortExpression="bookauthor" />
            <asp:BoundField DataField="bookquantity" HeaderText="Book Quantity" SortExpression="bookquantity" />
            <asp:ImageField DataImageUrlField="book_image" HeaderText="Book Image" SortExpression="book_image">
                <ControlStyle Height="80px" Width="100px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
</asp:Content>


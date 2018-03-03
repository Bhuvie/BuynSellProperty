<%@ Page Title="" Language="C#" MasterPageFile="~/propmaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 203px;
        color:white;
    }
    .auto-style5 {
        width: 203px;
        height: 23px;
        color:white;
    }
    .auto-style6 {
        height: 23px;
    }
    .auto-style3 {
        width: 100%;
        border: 1px solid #800000;
    }
    .auto-style7 {
        width: 306px;
    }
    .auto-style8 {
        height: 23px;
        width: 306px;
    }
        .auto-style9 {
            width: 203px;
            height: 26px;
            color:white;
        }
        .auto-style10 {
            width: 306px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
    <tr>
        <td class="auto-style4">Name:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtname" runat="server" Width="297px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtname"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Address</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtaddress" runat="server" Width="297px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Phone No.:</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtphone" runat="server" Width="297px"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtphone"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">E-Mail:</td>
        <td class="auto-style10">
            <asp:TextBox ID="txtemail" runat="server" Width="297px"></asp:TextBox>
        </td>
        <td class="auto-style11">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mail ID" Font-Bold="True" ForeColor="#990000" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I want to</td>
        <td class="auto-style7">
            <asp:Button ID="bsell" runat="server" PostBackUrl="~/sell.aspx" Text="Sell" />
&nbsp;
            <asp:Button ID="bbuy" runat="server" PostBackUrl="~/buy.aspx" Text="Buy" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>


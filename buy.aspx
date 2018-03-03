<%@ Page Title="" Language="C#" MasterPageFile="~/propmaster.master" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            border: 1px solid #800000;
        }
        .auto-style4 {
            width: 266px;
            color:white;
        }
    .auto-style5 {
        width: 266px;
        color:white;
        height: 23px;
    }
    .auto-style6 {
        height: 23px;
        color:white;
    }
        .auto-style7 {
            width: 266px;
            height: 30px;
            color:white;
        }
        .auto-style8 {
            height: 30px;
            color:white;
        }
        .auto-style9 {
            width: 266px;
            height: 22px;
            color:white;
        }
        .auto-style10 {
            height: 22px;
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <table class="auto-style3">
        
        <tr>
            <td class="auto-style4">What do you want to by:</td>
            <td>
                <asp:RadioButtonList ID="rbprop" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbprop_SelectedIndexChanged" RepeatDirection="Horizontal" ForeColor="White">
                    <asp:ListItem>Plot</asp:ListItem>
                    <asp:ListItem>House</asp:ListItem>
                    <asp:ListItem>Flat</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td class="auto-style4">Preferred Location:</td>
            <td>
                <asp:DropDownList ID="ddloc" runat="server" Width="202px">
                    <asp:ListItem Enabled="False" Selected="True">--Select--</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Coimbatore</asp:ListItem>
                    <asp:ListItem>Trichy</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lprice" runat="server" Text="Price:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtexpprice" runat="server" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtexpprice"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="larea" runat="server" Text="Area:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtarea" runat="server" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtarea"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lrooms" runat="server" Text="No. of Rooms:"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtrooms" runat="server" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtrooms"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lflat" runat="server" Text="Type of Flat:"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="rbres" runat="server" GroupName="rbflattype" Text="Residential" ForeColor="White" />
&nbsp;
                <asp:RadioButton ID="rbnres" runat="server" GroupName="rbflattype" Text="Non Residential" ForeColor="White" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lfloors" runat="server" Text="Desired Floor :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtflrs" runat="server" Width="297px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtflrs"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="bbuy" runat="server" Text="Search" OnClick="bbuy_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
            
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td style="color:white">Available Property:</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" Visible="False" >Call Now..</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">
                <asp:Label ID="Label5" runat="server" ForeColor="White"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" Visible="False">Mail Now..</asp:HyperLink>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                <asp:Label ID="Label7" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
            
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="Label9" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="Label10" runat="server" ForeColor="White"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
            
    </table>
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>


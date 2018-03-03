<%@ Page Title="" Language="C#" MasterPageFile="~/propmaster.master" AutoEventWireup="true" CodeFile="sell.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
    .auto-style3 {
        width: 100%;
        border: 1px solid #800000;
        
    }
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
        color:white;
    }
    .auto-style7 {
            width: 332px;
            color:white;
        }
    .auto-style8 {
            height: 23px;
            width: 332px;
            color:white;
        }
    .auto-style9 {
        width: 203px;
        height: 26px;
        color:white;
    }
    .auto-style10 {
        width: 332px;
        height: 26px;
        color:white;
    }
    .auto-style11 {
        height: 26px;
        color:white;
    }
    .auto-style12 {
        width: 203px;
        height: 25px;
        color:white;
    }
    .auto-style13 {
        width: 332px;
        height: 25px;
        color:white;
    }
    .auto-style14 {
        height: 25px;
        color:white;
    }
        .auto-style15 {
            width: 203px;
            height: 43px;
            color:white;
        }
        .auto-style16 {
            width: 332px;
            height: 43px;
            color:white;
        }
        .auto-style17 {
            height: 43px;
            color:white;
        }
        #Radio2 {
            width: 20px;
            color:white;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <table class="auto-style3">
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style16">
            
        </td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label1" runat="server" Text="I am :"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:RadioButtonList ID="rbown" runat="server" OnSelectedIndexChanged="rbprop_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem>Owner(self)</asp:ListItem>
                <asp:ListItem>Builder</asp:ListItem>
                <asp:ListItem>Dealer</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>&nbsp;</td>
    </tr>
        
        
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label2" runat="server" Text="Type of Property:"></asp:Label>
        </td>
      
        <td class="auto-style8">
          <asp:RadioButtonList ID="rbprop" runat="server" OnSelectedIndexChanged="rbprop_SelectedIndexChanged" RepeatDirection="Horizontal" style="margin-bottom: 0px" AutoPostBack="True">
                <asp:ListItem>Plot</asp:ListItem>
                <asp:ListItem>House</asp:ListItem>
                <asp:ListItem>Flat</asp:ListItem>
            </asp:RadioButtonList>

        </td>
        <td class="auto-style6"></td>
    </tr>
      
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style7">
           
           
        </td>
        <td>&nbsp;</td>
        <caption>
            s
        </caption>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="lloc" runat="server" Text="Location:"></asp:Label>
        </td>
        <td class="auto-style8">
            <asp:DropDownList ID="ddloc" runat="server" Width="202px">
                <asp:ListItem Enabled="False" Selected="True">--Select--</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Coimbatore</asp:ListItem>
                <asp:ListItem>Trichy</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lguide" runat="server" Text="GuideLine Value:"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtguide" runat="server" Width="297px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtguide"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lprice" runat="server" Text="Expected Price:"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtexpprice" runat="server" Width="297px" ></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtexpprice"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="larea" runat="server" Text="Area:"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtarea" runat="server" Width="297px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtarea"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="lyrs" runat="server" Text="Years old:"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="txtyrs" runat="server" Width="297px"></asp:TextBox>
        </td>
        <td class="auto-style11">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtyrs"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lflat" runat="server" Text="Type of Flat:"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:RadioButton ID="rbres" runat="server" GroupName="rbflattype" Text="Residential" />
&nbsp;
            <asp:RadioButton ID="rbnres" runat="server" GroupName="rbflattype" Text="Non Residential" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lfloors" runat="server" Text="No. of floors:"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtflrs" runat="server" Width="297px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtflrs"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Label ID="lrooms" runat="server" Text="No. of Rooms:"></asp:Label>
        </td>
        <td class="auto-style10">
            <asp:TextBox ID="txtrooms" runat="server" Width="297px"></asp:TextBox>
        </td>
        <td class="auto-style11">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Should not be empty." Font-Bold="True" ForeColor="#990000" ControlToValidate="txtrooms"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">
            <asp:Label ID="lfurn" runat="server" Text="Furnishing Condition:"></asp:Label>
        </td>
        <td class="auto-style13">
            <asp:RadioButton ID="rbfurn" runat="server" GroupName="rbfurnishing" Text="Furnished" />
&nbsp;
            <asp:RadioButton ID="rbfurn0" runat="server" GroupName="rbfurnishing" Text="Semi-Furnished" />
&nbsp;
            <asp:RadioButton ID="rbfurn1" runat="server" GroupName="rbfurnishing" Text="No Furnishing" />
        </td>
        <td class="auto-style14"></td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="lfeatures" runat="server" Text="Features:"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:CheckBoxList ID="cbfeatures" runat="server">
                <asp:ListItem>Power Backup</asp:ListItem>
                <asp:ListItem>Lift</asp:ListItem>
                <asp:ListItem>Swimming Pool</asp:ListItem>
                <asp:ListItem>Fitness Center</asp:ListItem>
                <asp:ListItem>Sports Area</asp:ListItem>
            </asp:CheckBoxList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="bsell" runat="server" Text="Post your Property" OnClick="bsell_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
         </ContentTemplate> </asp:UpdatePanel>       
</asp:Content>


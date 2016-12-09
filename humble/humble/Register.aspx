<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="humble.Pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create a new account</h2>
        <hr />
        
        First Name:<br />
        <asp:TextBox ID="fnBox" class="form-control" runat="server" Width="200" Height="35">
        </asp:TextBox><br />
        Last Name:<br />
        <asp:TextBox ID="lnBox" class="form-control" runat="server" Width="200" Height="35">
        </asp:TextBox><br />
        Email (used as login):<br />
        <asp:TextBox ID="mailBox" class="form-control" runat="server" Width="200" Height="35">
        </asp:TextBox><br />
        Age:<br />
        <asp:TextBox ID="ageBox" class="form-control" runat="server" Width="200" Height="35">
        </asp:TextBox><br />
        Your password:<br />
        <asp:TextBox ID="passBox" class="form-control" runat="server" Width="200" Height="35">
        </asp:TextBox><br />
        Subscribe to our mailing list and accept bonus offers?
        <asp:CheckBox ID="chkBox"  runat="server" /><br /><br />

        <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="humble.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Log in</h3>
    <hr />
    Email:<br />
    <asp:TextBox ID="emailBox" runat="server" class="form-control" Width="200" Height="35">
    </asp:TextBox><br />
    Password:<br />
    <asp:TextBox ID="passBox" runat="server" class="form-control" Width="200" Height="35">
    </asp:TextBox><br />
    <asp:Button ID="loginbutton" runat="server" class="btn btn-default" OnClick="loginbutton_Click" Text="Sign in"/>
    <br />
    <a href="Register.aspx">Haven't signed up yet?</a>
</asp:Content>

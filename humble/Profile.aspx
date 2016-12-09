<%@ Page Title="Your Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="humble.Pages.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Page.Title %></h2>
    <hr />
    <p>Welcome to your profile. Your details are listed below! <br />
        If you wish to change them, you need to contact us by email.
    </p>

    <strong>First Name:</strong> <br />
    <strong>Last Name:</strong><br />
    <strong>Email:</strong><br />
    <strong>Age:</strong><br />
    <strong>Password:</strong><br />
    <strong>Signed up for newsletter:</strong><br />
</asp:Content>

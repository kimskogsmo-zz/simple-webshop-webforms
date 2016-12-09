<%@ Page Title="Your orders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="humble.Pages.MyOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Your orders</h2>
    <hr />
        <div class="row">
            <div class="col-xs-2">
                Order ID
            </div>
            <div class="col-xs-2">
                Total
            </div>
            <div class="col-xs-8">
                Date 
            </div>
        </div>
    <asp:ListView runat="server" ID="orderList" ItemType="humble.Order">
        <ItemSeparatorTemplate><hr /></ItemSeparatorTemplate>
        <ItemTemplate>
        <div class="row">
            <div class="col-xs-2">
                <%# Item.Id %>
            </div>
            <div class="col-xs-2">
                <%# Item.Sum %> 
            </div>
            <div class="col-xs-8">
                <%# Item.Date %>
            </div>
        </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

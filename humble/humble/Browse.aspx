<%@ Page Title="Browse" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="humble.Pages.Browse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Browse our store</h2>
    <hr />
    <asp:ListView ID="categoryList" runat="server" ItemType="humble.Category">
        <ItemSeparatorTemplate> &nbsp; </ItemSeparatorTemplate>
        <ItemTemplate>
            <button style="
                border: none; width: auto; 
                height: 35px; background-color: skyblue; 
                font-family: 'Arial'; font-size: 16px; 
                color: black; text-decoration: none;" 
                onclick="fromCategory()">
                <strong>
                    <%# Item.Name %>
                </strong>
            </button>
            
        </ItemTemplate>
    </asp:ListView>
    <hr />
    <asp:ListView ID="productList" runat="server" ItemType="humble.Product">
        <ItemSeparatorTemplate>
            <div class="row">

            </div>
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <div class="row" id="itemRow">
                <div class="col-lg-1">
                    <img src="<%# Item.Pic %>" style="max-height: 65px; width: auto"/>
                </div> 
                <div class="col-lg-2">
                    <strong>Title: </strong> <%# Item.Name %><br />
                    <strong>Price: </strong> <%# Item.Price %>
                </div>
                <div class="col-lg-2">
                    
                </div>
                <div class="col-lg-6">
                    <button style="float: right;" onclick="readMore()">Read more</button><br />
                    <button style="float: right;">Add to cart</button>
                </div>
            </div>
            <div class="row" id="itemRowTwo" style="visibility:hidden;">
                <div class="col-lg-1">
                </div>
                <div class="col-lg-2">
                   <strong>Description: </strong> <%# Item.Details %>
                </div>
            </div>
            <hr />
            <script lang="text/javascript">
                function readMore() {
                    document.getElementById("itemRowTwo").style.visibility='visible';
                }
            </script>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

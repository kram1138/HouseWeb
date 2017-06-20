<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestWeb.Defualt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <asp:GridView ID="GridViewMain" runat="server" AutoGenerateColumns="False" CssClass="datagrid" AlternatingRowStyle-CssClass="altrow">
        <Columns>
            <asp:BoundField DataField="item" HeaderText="Item"/>
            <asp:BoundField DataField="cost" HeaderText="Cost" />
            <asp:BoundField DataField="person" HeaderText="Person" />
        </Columns>
    </asp:GridView>
</asp:Content>

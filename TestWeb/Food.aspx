<%@ Page Title="FOOOOOOOOOOD" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Food.aspx.cs" Inherits="TestWeb.Food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Shared Items"></asp:Label>
            <asp:GridView ID="GridViewMain" runat="server" AutoGenerateColumns="False" CssClass="datagrid" AlternatingRowStyle-CssClass="altrow" OnRowDataBound="GridViewMain_RowDataBound">
                <AlternatingRowStyle CssClass="altrow"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="item" HeaderText="Item"/>
                    <asp:TemplateField HeaderText ="Request Item">
                        <ItemTemplate>
                            <asp:Label ID="ToBuy" runat="server" Text='<%# Bind("tobuy") %>' style="display: none"></asp:Label>
                            <asp:Button ID="ButtonAdd" runat="server" CssClass="button" Text="Add To List" OnClick="AddToList"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <table>
                <tr>
                    <td><asp:Button ID="ButtonNew" runat="server" CssClass="button" Text="New Item" OnClick="ButtonNew_Click" /></td>
                    <td><asp:TextBox ID="TextNewItem" runat="server" CssClass="textbox" placeholder="Item Name"></asp:TextBox></td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

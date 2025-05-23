﻿<%@ Page Title="" Language="C#" MasterPageFile="~/sms.master" AutoEventWireup="true" CodeFile="DeleteProduct.aspx.cs" Inherits="Product_DeleteProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><style type="text/css">
        .addtable
{
    border-collapse:collapse;
    border:1px solid #ff0000;
    padding:10px;
    width:90%;
}
.addtableheader
{
    background:#FA5858;
    text-align:left;
    padding:10px 15px 10px 15px;
    color:#ffffff;
    font-size:1.5em;
    border:1px solid #ff0000;
}
.tdrow1
{
    background-color:#dddddd;
    width:300px;
    padding:5px 10px 5px 20px;
    border:1px solid #ff0000;
    font-weight:bold;
}
.tdrow2
{
    border:1px solid #ff0000;
    padding:4px 10px 4px 10px;
}
.textbox
{
    padding:3px 10px 3px 10px;
    width:250px;
}
.Btn
{
    padding:7px 10px 7px 10px;
    background:#2E9AFE;
    border:1px solid #2E9AFE;
    color:#ffffff;
    font-weight:bold;
}
.Btn:hover
{
    padding:7px 10px 7px 10px;
    background:#2E9AFE;
    border:1px solid #2E9AFE;
    color:#000000;
    font-weight:bold;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="padding:10px;">
<table class="addtable">
 <tr>
  <th colspan="3" class="addtableheader">Delete Product Details : </th>
 </tr>
 <tr>
  <td class="tdrow1">Product ID : </td>
  <td class="tdrow2"><asp:TextBox ID="txt_prod_id" runat="server" CssClass="textbox"></asp:TextBox>&nbsp;&nbsp;&nbsp;( example : Dealer ID should be : DL456 )&nbsp;&nbsp;&nbsp;<asp:Button 
          ID="Btn_get_Dealer_details" runat="server" Text=" Get Details " CssClass="Btn" 
          onclick="Btn_get_Dealer_details_Click" /></td>
 </tr>
 </table>
 </div>
 <div style="margin:20px 50px 20px 350px;">
 <asp:Label ID="lbl_delete_message" runat="server"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="350px" 
        AutoGenerateDeleteButton="True" AutoGenerateRows="False" 
         DataKeyNames="prod_id" onitemdeleting="DetailsView1_ItemDeleting">
        <CommandRowStyle BackColor="#6600FF" Font-Bold="True" Font-Overline="False" 
            Font-Size="Larger" Font-Strikeout="False" Font-Underline="False" 
            ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="prod_id" HeaderText="Product ID" />
            <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
            <asp:BoundField DataField="prod_comp_name" HeaderText="Company Name" />
            <asp:BoundField DataField="prod_manu_date" HeaderText="Manufacture Date" />
            <asp:BoundField DataField="prod_manu_exp_date" HeaderText="Expire Date" />
            <asp:BoundField DataField="prod_item_serial_no" HeaderText="Serial Number " />
            <asp:BoundField DataField="prod_item_batch_no" HeaderText="Batch Number" />
            <asp:BoundField DataField="prod_item_cost" HeaderText="Product Price/Cost" />
            <asp:BoundField DataField="prod_item_quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="prod_item_categoryid" 
                HeaderText="Product Category" />
            <asp:BoundField DataField="prod_item_dealerid" HeaderText="Dealer | Supplier" />
        </Fields>
        <RowStyle BackColor="#99CCFF" HorizontalAlign="Center" VerticalAlign="Middle" />
    </asp:DetailsView>
    </div>
</asp:Content>


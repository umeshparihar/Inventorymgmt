﻿<%@ Page Title="" Language="C#" MasterPageFile="~/sms.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="Category_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
  .tbcat
  {
      border-collapse:collapse;    
      margin:25px 250px 20px 230px;  
  }
  .tbcat_th
  {
      border:1px solid #008000;
      background-color:#008000;
      color:#ffffff;
      padding:7px 10px 7px 10px;
      text-align:left;
      font-size:1.5em;
      font-weight:bold;
  }
  .tbcat_td1
  {
      border:1px solid #008000;
      background-color:#66CC99;
      color:#000000;
      padding:5px 10px 5px 10px;
      width:200px;      
      font-weight:bold;
  }
  .tbcat_td2
  {
      border:1px solid #008000;
      padding:5px 10px 5px 10px;
      
  }
  .txt
  {
      padding:3px 10px 3px 10px;
      width:250px;
  }
  .btncat
  {
      padding:7px 10px 7px 10px;
      background:#800080;
      border:1px solid #800080;
      color:#ffffff;
  }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbcat">
  <tr>
   <th colspan="3" class="tbcat_th">Add Category : </th>
  </tr>
  <tr>
   <td class="tbcat_td1"> Category ID : </td>
   <td class="tbcat_td2">
 <asp:TextBox ID="txt_category_ID" runat="server" CssClass="txt" MaxLength="10"></asp:TextBox>&nbsp;&nbsp&nbsp;&nbsp; ( example : Category ID should be : CAT1234567 )
 </td>
 </tr>
 <tr>
 <td class="tbcat_td1"> Category Name : </td>
   <td class="tbcat_td2">
   <asp:TextBox ID="txt_category_name" runat="server" CssClass="txt"></asp:TextBox>
   </td>
 </tr>
 <tr>
  <td class="tbcat_td1">Dealer </td>
  <td class="tbcat_td2">
  <asp:DropDownList ID="ddl_cat_dealer" runat="server" CssClass="txt" Width="275px"></asp:DropDownList>
  </td>
 </tr>
 </table>
 <div style="margin:25px 480px 20px 530px;" >
 <asp:Button ID="Btn_Add_Category" runat="server" CssClass="btncat" 
         Text=" ADD Category " onclick="Btn_Add_Category_Click" />
 </div>
 <div style="margin:25px 400px 20px 420px;" >
 <asp:GridView ID="grd_category" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" GridLines="Vertical">
     <AlternatingRowStyle BackColor="#DCDCDC" />
     <Columns>
         <asp:BoundField DataField="categoryid" HeaderText=" Category ID " />
         <asp:BoundField DataField="categoryname" HeaderText=" Category Name " />
         <asp:BoundField DataField="dealername" HeaderText=" Dealer Name " />
     </Columns>
     <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
     <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"  />
     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
     <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
     <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
     <SortedAscendingCellStyle BackColor="#F1F1F1" />
     <SortedAscendingHeaderStyle BackColor="#0000A9" />
     <SortedDescendingCellStyle BackColor="#CAC9C9" />
     <SortedDescendingHeaderStyle BackColor="#000065" />
  
 </asp:GridView>
 </div>
</asp:Content>


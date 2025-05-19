<%@ Page Title="" Language="C#" MasterPageFile="~/sms.master" AutoEventWireup="true" CodeFile="ListofDealer.aspx.cs" Inherits="Add_ListofDealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      .addtable
{
    border-collapse:collapse;
    border:1px solid #ff0000;
    padding:10px;
    width:88%;
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
.GridView1
{
    background-color:#dddddd;
    padding:7px 10px 7px 10px;
    margin-top:10px;
}
.Grd_HeaderStyle
{
    background:#6699cc;
    color:#ffffff;
    padding:7px 10px 7px 10px;
}
.Grd_row
{
    padding:7px 10px 7px 10px;
}

.txtsearch
{
    padding:3px 10px 3px 10px;
    margin:0px 220px 0px -160px;
    text-align:left;
    float:right;
}
.btnsearch
{
    margin:0px -100px 0px -50px;
    padding:4px 10px 4px 10px;
    background:#800080;
    color:#ffffff;
    border:1px solid #800080;    
    float:right;
}

/* Menu
-------------------*/
     .dealermenu
     {
         background:#2E9AFE;
         padding:2px;
         list-style-type:none;
         display:block;
     }
     .dealermenu li
     {
         display:block;
         border-bottom:1px solid #000000;
     }
     .dealermenu li a
     {
          background:#2E9AFE;
         padding:20px 50px 20px 50px;
         list-style-type:none;
         display:block;
         color:#ffffff;
         text-decoration:none;                  
     }
     .dealermenu li a:hover
     {
         background:#000000;
         padding:20px 50px 20px 50px;
         list-style-type:none;
         display:block;
         color:#ffffff;
         text-decoration:none;
         
     }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding:10px;">
<table class="addtable">
 <tr>
  <th class="addtableheader" colspan="3">List Of Dealer's Details : </th>
 </tr>
</table>
<div style="float:right; padding:10px; width:88%;">
<asp:TextBox ID="txt_search" CssClass="txtsearch" runat="server" placeholder="Search ..." ></asp:TextBox>
    <asp:Button ID="Btn_Search" runat="server" CssClass="btnsearch" Text=" Search " 
        onclick="Btn_Search_Click" />
</div>

<div style="float:right; padding:10px 50px 10px 20px;">
 <ul class="dealermenu">
  <li><a href="AddDealer.aspx"> Add Dealer </a></li>
  <li><a href="EditDealer.aspx"> Update Dealer </a></li>
  <li><a href="DeleteDealer.aspx"> Delete Dealer </a></li>
  <li><a href="#">  </a></li>
  <li><a href="ListofDealer.aspx"> List of Dealer's </a></li>
 </ul>
</div>

    <asp:GridView ID="GridView1" runat="server" CssClass="GridView1">
<HeaderStyle CssClass="Grd_HeaderStyle"></HeaderStyle>
    </asp:GridView>
</div>
</asp:Content>


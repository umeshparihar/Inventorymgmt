<%@ Page Title="" Language="C#" MasterPageFile="~/sms.master" AutoEventWireup="true" CodeFile="DeleteDealer.aspx.cs" Inherits="Add_DeleteDealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
  <th colspan="3" class="addtableheader">Delete Dealer Details : </th>
 </tr>
 <tr>
  <td class="tdrow1">Dearler ID : </td>
  <td class="tdrow2"><asp:TextBox ID="txt_dealer_id" runat="server" CssClass="textbox"></asp:TextBox>&nbsp;&nbsp;&nbsp;( example : Dealer ID should be : DL456 )&nbsp;&nbsp;&nbsp;<asp:Button ID="Btn_get_Dealer_details" runat="server" Text=" Get Details " CssClass="Btn" /></td>
 </tr>
 </table>
 </div>  
<div style="float:right; padding:10px 50px 10px 20px;">
 <ul class="dealermenu">
  <li><a href="AddDealer.aspx"> Add Dealer </a></li>
  <li><a href="EditDealer.aspx"> Update Dealer </a></li>
  <li><a href="DeleteDealer.aspx"> Delete Dealer </a></li>
  <li><a href="#"> Search Dealer </a></li>
  <li><a href="ListofDealer.aspx"> List of Dealer's </a></li>
 </ul>
</div>
</asp:Content>


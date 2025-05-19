<%@ Page Title="" Language="C#" MasterPageFile="~/sms.master" AutoEventWireup="true" CodeFile="ViewDealer.aspx.cs" Inherits="Add_ViewDealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/add.css" rel="stylesheet" type="text/css" />
     <style type="text/css">
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
    <div style="float:right; padding:10px 50px 10px 20px;">
 <ul class="dealermenu">
  <li><a href="AddDealer.aspx"> Add Dealer </a></li>
  <li><a href="EditDealer.aspx"> Update Dealer </a></li>
  <li><a href="DeleteDealer.aspx"> Delete Dealer </a></li>
  <li><a href="#"> Search Dealer </a></li>
  <li><a href="ListofDealer.aspx"> List of Dealer's </a></li>
 </ul>
</div>
<div style="padding:10px;">
<table class="addtable">
 <tr>
  <th colspan="3" class="addtableheader">Dealer Details : </th>
 </tr>
 <tr>
  <td class="tdrow1">Dearler ID : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_id" runat="server"></asp:Label></td>
 </tr>
 <tr>
  <td class="tdrow1">Dearler Name : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_name" runat="server"></asp:Label></td>
 </tr>
 <tr>
  <th colspan="3" style="background:#FA5858; text-align:left; padding:5px 15px 5px 15px; color:#ffffff; font-size:1.3em; border:1px solid #ff0000;">Address : </th>
 </tr>
 <tr>
  <td class="tdrow1">House No : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_house_no" runat="server" ></asp:Label></td>
 </tr>
 <tr>
  <td class="tdrow1">Street Name : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_street_name" runat="server" ></asp:Label></td>
 </tr>
 <tr>
  <td class="tdrow1">Area : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_area" runat="server" ></asp:Label></td>
 </tr>
 <tr>
  <td class="tdrow1">Landmark : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_landmark" runat="server" ></asp:Label></td>
 </tr>
 <tr>
  <td class="tdrow1">City : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_city" runat="server" ></asp:Label></td>
 </tr>
 <tr>
  <td class="tdrow1">State : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_state" runat="server" ></asp:Label></td>
 </tr>
 <tr>
  <td class="tdrow1">Pincode : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_pincode" runat="server" ></asp:Label></td>
 </tr>
 <tr>
  <td class="tdrow1">Contact | Mobile No : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_contact_No" runat="server"></asp:Label></td>
 </tr>
 <tr>
  <td class="tdrow1">LandLine No : </td>
  <td class="tdrow2"><asp:Label ID="lbl_dealer_landline_no" runat="server"></asp:Label></td>
 </tr>
</table>
<div style="width:70%; padding-top:20px; text-align:center;">
<asp:Button ID="Btn_Edit_Info" runat="server" Text=" Edit Details " CssClass="Btn" onclick="Btn_Edit_Info_Click" 
        />&nbsp;&nbsp;&nbsp;<asp:Button ID="Btn_Cancel" runat="server" 
        Text=" Cancel " CssClass="Btn" onclick="Btn_Cancel_Click"/>
</div>
</div>
</asp:Content>


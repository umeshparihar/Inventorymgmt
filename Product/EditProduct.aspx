<%@ Page Title="" Language="C#" MasterPageFile="~/sms.master" AutoEventWireup="true" CodeFile="EditProduct.aspx.cs" Inherits="Product_EditProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../CSS/css_prod.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
 <table class="tbprod">
  <tr>
   <th colspan="3" class="tbprod_th">Edit Product </th>
  </tr>
  <tr>
   <td class="tbprod_td1"> Product ID </td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_id" runat="server" CssClass="text_prod"></asp:TextBox>&nbsp;&nbsp;&nbsp;<asp:Button 
           ID="Btn_Get_Product" runat="server" Text=" Get Details " 
           style="padding:4px 10px 4px 10px;" CssClass="btn_submit" 
           onclick="Btn_Get_Product_Click" /></td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Name </td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_name" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Company Name</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_prod_company_name" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1">Manu. Date</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_prod_manufacture_date" runat="server" CssClass="text_prod"></asp:TextBox>&nbsp;&nbsp;&nbsp;( Manufacture Date )</td>
  </tr>
  <tr>
   <td class="tbprod_td1">Manu. Expire Date</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_prod_manufacture_exp_date" runat="server" CssClass="text_prod"></asp:TextBox>&nbsp;&nbsp;&nbsp;( Manufacture Expire Date )</td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Serial Number</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_serial_number" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Batch Number</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_batch_number" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1"> MRP Price</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_cost" runat="server" CssClass="text_prod"></asp:TextBox>&nbsp;&nbsp;&nbsp;( Cost of Product )</td>
  </tr>
  <tr>
   <td class="tbprod_td1"> Quantity</td>
   <td class="tbprod_td2"><asp:TextBox ID="txt_product_quantity" runat="server" CssClass="text_prod"></asp:TextBox></td>
  </tr>
  <tr>
   <td class="tbprod_td1">Product Category</td>
   <td class="tbprod_td2"><asp:DropDownList ID="ddl_prod_category_edit" runat="server" 
           CssClass="text_prod" Width="275px" AutoPostBack="True" 
           onselectedindexchanged="ddl_prod_category_edit_SelectedIndexChanged1" ></asp:DropDownList></td>
  </tr>
  <tr>
   <td class="tbprod_td1">Product Dealer </td>
   <td class="tbprod_td2"><asp:DropDownList ID="ddl_prod_dealer_edit" runat="server" 
           CssClass="text_prod" Width="275px" Enabled="False"></asp:DropDownList></td>
  </tr>
 </table>
 <div style="margin:20px 50px 10px 215px;">
  <asp:Button ID="Btn_add_product" runat="server" Text=" Add New Product " 
         CssClass="btn_submit" onclick="Btn_add_product_Click" />&nbsp;&nbsp;&nbsp;<asp:Button 
         ID="Btn_Update" runat="server" Text=" Update " CssClass="btn_submit" 
         onclick="Btn_Update_Click" />&nbsp;&nbsp;&nbsp;
  <asp:Button ID="Btn_Edit" runat="server" Text=" Edit " CssClass="btn_submit" 
         onclick="Btn_Edit_Click" />&nbsp;&nbsp;&nbsp;
  <asp:Button ID="Btn_Cancel" runat="server" Text=" Cancel " CssClass="btn_submit" />
 </div>
</div>
</asp:Content>


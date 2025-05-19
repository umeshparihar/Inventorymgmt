<%@ Page Title="" Language="C#" MasterPageFile="~/sms.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
  .tbcust
  {
      border-collapse:collapse;
      width:80%;
  }  
   .tbcust, .tbcust_th, .tbcust_td1, .tbcust_td2
  {      
      border:1px solid #6699cc;
  }
  .tbcust_th
  {
      background-color:#006699;
      color:#ffffff;
      font-size:1.6em;
      font-weight:bold;
      padding:7px 10px 7px 10px;      
  }
  .tbcust_th_sub
  {
      background-color:#800080;
      color:#ffffff;
      font-size:1.2em;
      font-weight:bold;
      padding:5px 10px 5px 10px;      
  }
  .tbcust_td1
  {
      background-color:#dddddd;
      color:#333333;
      padding:4px 8px;
      width:120px;
      vertical-align:middle;
      text-align:right;
  }
  .tbcust_td2
  {
      padding:5px 10px 5px 10px;
      width:250px;
  }
  .txt_cust_readOnly
  {
      padding:3px 8px;
      width:220px;
      background:#dddddd;
  }
  .txt_cust_regullar
  {
      padding:3px 8px;
      width:220px;
    }
    .btn_submit
    {
        background:#006699;
        color:#ffffff;
        padding:8px 12px 8px 12px;
        border:1px solid #006699;
        margin:0px 50px 10px 500px;
        position:fixed;
        font-weight:bold;
    }
</style>
    <script src="../JS/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="../JS/cust_js.js" type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin:10px 50px 10px 150px;">
     <table class="tbcust">
      <tr>
       <th class="tbcust_th" colspan="4">Customer Details : </th>
      </tr>
      <tr>
       <td class="tbcust_td1">
         Customer ID :
       </td>
       <td class="tbcust_td2">
         <asp:TextBox ID="txt_cust_ID" runat="server" CssClass="txt_cust_readOnly" 
               ReadOnly="True"></asp:TextBox>
       </td>
       <td class="tbcust_td1">
         Date :
       </td>
       <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_date" runat="server" CssClass="txt_cust_readOnly" 
               ReadOnly="True"></asp:TextBox>
       </td>
      </tr>
      <tr>
       <td class="tbcust_td1">
        Customer Name :
       </td>
       <td class="tbcust_td2">
         <asp:TextBox ID="txt_cust_name" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>
       </td>
       <td class="tbcust_td1">
        Phone | Mobile No :
       </td>
       <td class="tbcust_td2">
       <asp:TextBox ID="txt_cust_phone_no" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>
       </td>
      </tr>
      <tr>
        <td class="tbcust_td1" colspan="1" valign="middle" align="center">
         Address :
        </td>
        <td class="tbcust_td2" colspan="3">
         <asp:TextBox ID="txt_cust_address" runat="server" CssClass="txt_cust_regullar" 
                TextMode="MultiLine" Width="490px" Columns="600" Rows="5"></asp:TextBox>
        </td>
      </tr>      
      <tr>
       <td class="tbcust_td1">
        Product Name :
       </td>
       <td class="tbcust_td2">
       <asp:DropDownList ID="ddl_cust_prod_ID" runat="server" CssClass="txt_cust_regullar" 
               Width="239px" AutoPostBack="True" 
               onselectedindexchanged="ddl_cust_prod_ID_SelectedIndexChanged"></asp:DropDownList>
       </td>
       <td class="tbcust_td1">
        Category :
       </td>
       <td class="tbcust_td2">
        <asp:DropDownList ID="ddl_cust_category" runat="server" CssClass="txt_cust_regullar" Width="239px"></asp:DropDownList>
       </td>
      </tr>
      <tr>
       <td class="tbcust_td1">
         Quantity :
       </td>
       <td class="tbcust_td2">
       <asp:TextBox ID="txt_cust_prod_qty" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>
       </td>
       <td class="tbcust_td1">
       Total Price :
       </td>
       <td class="tbcust_td2">
       <asp:TextBox ID="txt_cust_total_price" runat="server" CssClass="txt_cust_readOnly" ReadOnly="true"></asp:TextBox>
       </td>
      </tr>
      <tr>
       <td class="tbcust_td1">
        Cash Mode :
       </td>
       <td class="tbcust_td2" colspan="3">
        <asp:DropDownList ID="ddl_cust_cash_mode" runat="server" CssClass="txt_cust_regullar" Width="239px">
           </asp:DropDownList>
       </td>
      </tr>
      <tr id="trcashmode">
       <td id="tdcashmode" colspan="4">
        <div id="cashtab" align="center">
        <table class="tbcust">
        <tr>
         <th colspan="4" class="tbcust_th_sub" align="left">
          Cash :
         </th>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Cash Received :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_cash_received" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;.00 Rupees Only
         </td>
        </tr>
       </table>
       </div>
        <div id="checktab" align="center">
           <table class="tbcust">
        <tr>
         <th colspan="4" class="tbcust_th_sub" align="left">
          Check | D.D :
         </th>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Which Bank Check|D.D is given :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust__bank_name_check" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;(ex:- SBI Bank, Hyd,Telangana)
         </td>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Check | D.D No :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_check_dd_no" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;(ex:- " 000000 ")
         </td>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Check Amount :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_check_amount" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;.00 Rupees Only
         </td>
        </tr>
       </table>
        </div>
        <div id="credit_debit_tab" align="center">
           <table class="tbcust">
        <tr>
         <th colspan="4" class="tbcust_th_sub" align="left">
          Credit | Debit Card  :
         </th>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Credit | Debit Card No :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_credit_debit_card_no" runat="server" CssClass="txt_cust_regullar" placeholder=" enter 16 digits number please.."></asp:TextBox>&nbsp;(ex:- 5999 7888 4777 2666)
         </td>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Please Enter Transaction Number :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_credit_debit_trnx_no" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;(ex:- TrnxID : 123456)
         </td>
        </tr>
        <tr>
         <td class="tbcust_td1">
          Amount :
         </td>
         <td class="tbcust_td2">
          <asp:TextBox ID="txt_cust_credit_debit_card_amount" runat="server" CssClass="txt_cust_regullar"></asp:TextBox>&nbsp;.00 Rupees Only
         </td>
        </tr>
       </table>
        </div>
       </td>
      </tr>
     </table>
    </div>
    <asp:Button ID="Btn_Custom_submit" runat="server" Text=" Submit " 
        CssClass="btn_submit" onclick="Btn_Custom_submit_Click"/>
</asp:Content>


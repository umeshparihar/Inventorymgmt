using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entities;
using SMS_BAL;

public partial class Add_ViewDealer : System.Web.UI.Page
{
    Common_Functions _com_fn_dealer_id = new Common_Functions();
    BAL businessLogic = new BAL();

    protected void Page_Load(object sender, EventArgs e)
    {        
        if (!IsPostBack)
        {
            //Request.QueryString["dealerID"] = "0";
            if (Request.QueryString["dealerID"] != null)
            {
                string ID = Request.QueryString["dealerID"].ToString();
                Get_Dealer_With_ID(ID);
            }
        }
    }
    public void Get_Dealer_With_ID(string Id)
    {
        DataSet ds = new DataSet();
        _com_fn_dealer_id.did = Id;
        ds = businessLogic.Get_Dealer_with_ID(_com_fn_dealer_id);
        if (ds.Tables[0].Rows.Count > 0)
        {
            lbl_dealer_id.Text = ds.Tables[0].Rows[0]["dealerid"].ToString();
            lbl_dealer_name.Text = ds.Tables[0].Rows[0]["dealername"].ToString();
            lbl_dealer_house_no.Text = ds.Tables[0].Rows[0]["dealerhouseno"].ToString();
            lbl_dealer_street_name.Text = ds.Tables[0].Rows[0]["dealerstreetname"].ToString();
            lbl_dealer_area.Text = ds.Tables[0].Rows[0]["dealerarea"].ToString();
            lbl_dealer_landmark.Text = ds.Tables[0].Rows[0]["dealerlandmark"].ToString();
            lbl_dealer_city.Text = ds.Tables[0].Rows[0]["dealercity"].ToString();
            lbl_dealer_state.Text = ds.Tables[0].Rows[0]["dealerstate"].ToString();
            lbl_dealer_pincode.Text = ds.Tables[0].Rows[0]["dealerpincode"].ToString();
            lbl_dealer_contact_No.Text = ds.Tables[0].Rows[0]["dealercontactno"].ToString();
            lbl_dealer_landline_no.Text = ds.Tables[0].Rows[0]["dealerlandlineno"].ToString();            
        }
    }
    protected void Btn_Edit_Info_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Add/EditDealer.aspx?DealerID=" + lbl_dealer_id.Text);
    }
    protected void Btn_Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Add/ListofDealer.aspx");
    }
}
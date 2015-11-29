using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["fromloc"] = "";
        Session["toloc"] = "";
        Session["fromdate"] = "";
        Session["todate"] = "";
        Session["adult"] = "";
        Session["child"] = "";
        Session["class"] = "";
        Session["Hotellocation"] = "";
        Session["checkin"] = "";
        Session["checkout"] = "";
        Session["room"] = "";
        Session["night"] = "";
        Session["hadult"] = "";
        Session["hchild"] = "";
    }
    protected void BtnSearchFlight_Click(object sender, EventArgs e)
    {
        Session["fromloc"] = txtDeparture.SelectedItem.Text;
        Session["toloc"] = txtArraival.SelectedItem.Text;
        Session["fromdate"] = txtFromdate.Text;
        Session["todate"] = txtTodate.Text;
        Session["adult"] = txtAdult.Text;
        Session["child"] = txtChild.Text;
        Session["class"] = ddl_Type.SelectedItem.Text;
        Response.Redirect("FlightBooking.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "";
    }
    protected void btn_searchhotel_Click(object sender, EventArgs e)
    {
        Session["Hotellocation"] = lblhloc.Text;
        Session["checkin"] =  lblchkin.Text;
        Session["checkout"] = lblchkout.Text;
        Session["room"] = ddlhroom.SelectedItem.Text;
        Session["night"] = ddlhnight.SelectedItem.Text;
        Session["hadult"] = lblhadult.Text;
        Session["hchild"] = lblhchild.Text;
        Response.Redirect("HotelBooking.aspx");
    }
    protected void btn_Searchcab_Click(object sender, EventArgs e)
    {
        Session["cabfromloc"] = txtfloc.Text;
        Session["cabtoloc"] = txttloc.Text;
        Session["pickup"] = txtpickup.Text;
        Session["pickoff"] = txtpickoff.Text;
        Session["no"] = ddlpass.SelectedItem.Text;
        Response.Redirect("CabBooking.aspx");
    }
}
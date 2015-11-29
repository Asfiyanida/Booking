using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblcname.Text = Session["cname"].ToString();
        lblfloc.Text = Session["cabfromloc"].ToString();
        lbltloc.Text = Session["cabtoloc"].ToString();
        lblno.Text = Session["no"].ToString();
        lblprice.Text = Session["price"].ToString();
        Image1.ImageUrl = Session["image"].ToString();
        //SqlConnection con = new SqlConnection("Data Source=ASFI;Initial Catalog=Booking;User ID=sa;Password=1234");
        //lbl_lfrom.Text = Session["fromloc"].ToString();
        //lbl_lto.Text = Session["toloc"].ToString();
        //lblDdate.Text = Session["fromdate"].ToString();
        //lblRdate.Text = Session["todate"].ToString();
        //lblAdult.Text = Session["adult"].ToString();
        //lblchild.Text = Session["child"].ToString();
        //lblclass.Text = Session["class"].ToString();
        GetList(Session["fromloc"].ToString(), Session["toloc"].ToString());
    }

    public void GetList(string frmloc, string toloc)
    {
        //SqlConnection con = new SqlConnection("Data Source=ASFI;Initial Catalog=Booking;User ID=sa;Password=1234");
        //con.Open();
        //SqlDataAdapter cmd = new SqlDataAdapter("Select * from TblFlight where frmloc = '" + frmloc + "' and toloc = '" + toloc + "'", con);
        //DataTable dt = new DataTable();
        //cmd.Fill(dt);
        //Repeater1.DataSource = dt;
        //Repeater1.DataBind();
        //con.Close();
        //con.Open();
        //SqlCommand com = new SqlCommand("Select count(*) from TblFlight where frmloc = '" + frmloc + "' and toloc = '" + toloc + "'", con);
        //int cc = (int)com.ExecuteScalar();
        //lblcount.Text = cc.ToString();
        //con.Close();

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        Response.Redirect("FlightSuccess.aspx");
    }
}
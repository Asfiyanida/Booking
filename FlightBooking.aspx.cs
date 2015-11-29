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
        //SqlConnection con = new SqlConnection("Data Source=ASFI;Initial Catalog=Booking;User ID=sa;Password=1234");
        Session["fname"] = "";
        Session["ftime"] = "";
        Session["ttime"] = "";
        Session["time"] = "";
        Session["price"] = "";
        lbl_lfrom.Text = Session["fromloc"].ToString();
        lbl_lto.Text = Session["toloc"].ToString();
        lblDdate.Text = Session["fromdate"].ToString();
        lblRdate.Text = Session["todate"].ToString();
        lblAdult.Text = Session["adult"].ToString();
        lblchild.Text = Session["child"].ToString();
        lblclass.Text = Session["class"].ToString();
        GetList(Session["fromloc"].ToString(), Session["toloc"].ToString());
    }

    public void GetList(string frmloc, string toloc)
    {
        SqlConnection con = new SqlConnection("Data Source=ASFI;Initial Catalog=Booking;User ID=sa;Password=1234");
        con.Open();
        SqlDataAdapter cmd = new SqlDataAdapter("Select * from TblFlight where frmloc = '" + frmloc + "' and toloc = '" + toloc + "'", con);
        DataTable dt = new DataTable();
        cmd.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        con.Close();
        con.Open();
        SqlCommand com = new SqlCommand("Select count(*) from TblFlight where frmloc = '" + frmloc + "' and toloc = '" + toloc + "'", con);
        int cc = (int)com.ExecuteScalar();
        lblcount.Text = cc.ToString();
        con.Close();

    }

    protected void lnk_book_Click(object sender, EventArgs e)
    {
        LinkButton button = (sender as LinkButton);
        string commandArgument = button.CommandArgument;
        RepeaterItem item = button.NamingContainer as RepeaterItem;
        int index = item.ItemIndex;
        Session["fname"] = ((Label)(Repeater1.Items[index].FindControl("lblfname"))).Text;
        Session["ftime"] = ((Label)(Repeater1.Items[index].FindControl("lblftime"))).Text;
        Session["ttime"] = ((Label)(Repeater1.Items[index].FindControl("lblttime"))).Text;
        Session["time"] = ((Label)(Repeater1.Items[index].FindControl("lbltime"))).Text;
        Session["price"] = ((Label)(Repeater1.Items[index].FindControl("lblprice"))).Text;
        //Session["fromloc"] = Repeater1.Items[index].FindControl("lblfname")
        //Session["toloc"] = txtArraival.SelectedItem.Text;
        //Session["fromdate"] = txtFromdate.Text;
        //Session["todate"] = txtTodate.Text;
        //Session["adult"] = txtAdult.Text;
        //Session["child"] = txtChild.Text;
        //Session["class"] = ddl_Type.SelectedItem.Text;
        Response.Redirect("Flightpayment.aspx");

    }
}
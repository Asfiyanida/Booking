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
        lbl_lfrom.Text = Session["cabfromloc"].ToString();
        lbl_lto.Text = Session["cabtoloc"].ToString();
        lblDdate.Text = Session["pickup"].ToString();
        lblRdate.Text = Session["pickoff"].ToString();
        lblno.Text = Session["no"].ToString();
        GetList(Session["fromloc"].ToString(), Session["toloc"].ToString());
    }

    public void GetList(string frmloc, string toloc)
    {
        SqlConnection con = new SqlConnection("Data Source=ASFI;Initial Catalog=Booking;User ID=sa;Password=1234");
        con.Open();
        SqlDataAdapter cmd = new SqlDataAdapter("Select top 6 * from TblCab ORDER BY NEWID()", con);
        DataTable dt = new DataTable();
        cmd.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        con.Close();
        //con.Open();
        //SqlCommand com = new SqlCommand("Select count(*) from TblCab where frmloc = '" + frmloc + "' and toloc = '" + toloc + "'", con);
        //int cc = (int)com.ExecuteScalar();
        lblcount.Text = "6";
        //con.Close();

    }

    protected void lnk_book_Click(object sender, EventArgs e)
    {
        LinkButton button = (sender as LinkButton);
        string commandArgument = button.CommandArgument;
        RepeaterItem item = button.NamingContainer as RepeaterItem;
        int index = item.ItemIndex;
        string nam = ((Label)(Repeater1.Items[index].FindControl("lblcname"))).Text;
        Session["cname"] = ((Label)(Repeater1.Items[index].FindControl("lblcname"))).Text;
        Session["image"] = ((Image)(Repeater1.Items[index].FindControl("Image1"))).ImageUrl;
        Session["price"] = ((Label)(Repeater1.Items[index].FindControl("lblprice"))).Text;
        Response.Redirect("CabSuccess.aspx");
    }
}
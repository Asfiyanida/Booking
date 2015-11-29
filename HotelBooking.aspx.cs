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
        lblloc.Text = Session["Hotellocation"].ToString();
        lblin.Text = Session["checkin"].ToString();
        lblout.Text = Session["checkout"].ToString();
        lblroom.Text = Session["room"].ToString();
        lblnight.Text = Session["night"].ToString();
        lblAdult.Text = Session["hadult"].ToString();
        lblchild.Text = Session["hchild"].ToString();
        Session["hname"] = "";
        Session["haddr"] = "";
        GetList(Session["fromloc"].ToString(), Session["toloc"].ToString());
    }

    public void GetList(string frmloc, string toloc)
    {
        SqlConnection con = new SqlConnection("Data Source=ASFI;Initial Catalog=Booking;User ID=sa;Password=1234");
        con.Open();
        SqlDataAdapter cmd = new SqlDataAdapter("Select top 6 * from TblHotel ORDER BY NEWID()", con);
        DataTable dt = new DataTable();
        cmd.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
        con.Close();
    }

    protected void lnk_book_Click1(object sender, EventArgs e)
    {
        LinkButton button = (sender as LinkButton);
        string commandArgument = button.CommandArgument;
        RepeaterItem item = button.NamingContainer as RepeaterItem;
        int index = 1;//item.ItemIndex;
        Session["hname"] = ((Label)(Repeater1.Items[index].FindControl("lblhname"))).Text;
        Session["image"] = ((Image)(Repeater1.Items[index].FindControl("Image1"))).ImageUrl;
        Session["haddr"] = ((Label)(Repeater1.Items[index].FindControl("lblhaddr"))).Text;
        Session["price"] = ((Label)(Repeater1.Items[index].FindControl("lblhprice"))).Text;
        //Session["fromloc"] = Repeater1.Items[index].FindControl("lblfname")
        //Session["toloc"] = txtArraival.SelectedItem.Text;
        //Session["fromdate"] = txtFromdate.Text;
        //Session["todate"] = txtTodate.Text;
        //Session["adult"] = txtAdult.Text;
        //Session["child"] = txtChild.Text;
        //Session["class"] = ddl_Type.SelectedItem.Text;
        Response.Redirect("Hotelpayment.aspx");

    }
}
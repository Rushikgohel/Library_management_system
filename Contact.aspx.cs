using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Configuration;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        //string con1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Library_Management\App_Data\Library_Management.mdf;Integrated Security=True");
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select *from contact where email='"+TextBox2.Text+"'",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('This Record All Ready Exits.');window.location='Contact.aspx'</script>");
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insert into contact values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Send Successfully.');window.location='Contact.aspx'</script>");
        }
    }
}
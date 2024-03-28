using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string con1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Library_Management\App_Data\Library_Management.mdf;Integrated Security=True");
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select *from admin where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count>0)
        {
            Response.Write("<script>alert('Login Successfully.');window.location='admin/AdminIndex.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('Enter Valid Username And Password.');window.location='AdminLogin.aspx'</script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ForgotPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // string con1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Library_Management\App_Data\Library_Management.mdf;Integrated Security=True");
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select *from student where email='"+TextBox1.Text+"'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if(dt.Rows.Count>0)
        {
            String email = dt.Rows[0]["email"].ToString();
            SqlCommand cmd = new SqlCommand("update student set password='" + TextBox3.Text + "' where email=email ", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Password Change Successfully.');window.location='StudentLogin.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('Enter Right Email ID.');window.location='ForgotPass.aspx'</script>");
        }
    }
}
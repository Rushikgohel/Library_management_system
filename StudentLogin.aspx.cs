using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StudentLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       // string con1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Library_Management\App_Data\Library_Management.mdf;Integrated Security=True");
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select *from student where email='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Session["email"] = TextBox1.Text;
        Session["pass"] = TextBox2.Text;
        if(dt.Rows.Count>0)
        {
            Response.Write("<script>alert('Login Successfully.');window.location='student/Student_index.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('Enter Valid Email & Password OR First Fill SignUp Form Before Login..');window.location='StudentLogin.aspx'</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPass.aspx");
    }
}
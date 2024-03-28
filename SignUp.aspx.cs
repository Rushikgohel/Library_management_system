using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string con1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Library_Management\App_Data\Library_Management.mdf;Integrated Security=True");
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select *from student where email='"+TextBox2.Text+"' or password='"+TextBox6.Text+"'",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Session["email"]=TextBox2.Text;
        Session["password"] = TextBox6.Text;
        if (dt.Rows.Count > 0)
        {
             Response.Write("<script>alert('Fill Different Email And Password.');window.location='SignUp.aspx'</script>"); 
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insert into student (name,email,contact,address,department,semester,password) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox6.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Record Insert Successfully.');window.location='StudentLogin.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Record Not Insert Successfully.');window.location='SignUp.aspx'</script>");
            }
        }
    }
}
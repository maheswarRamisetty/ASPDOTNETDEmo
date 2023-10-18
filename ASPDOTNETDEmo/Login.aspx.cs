using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPDOTNETDEmo
{

    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SIVARAMAIAH\\source\\repos\\ASPDOTNETDEmo\\ASPDOTNETDEmo\\App_Data\\DatabaseDemo.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }
        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string query = "select * from [dbo].[register] where uname='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("Invalid Credentials");
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
            }
        }
    }
}
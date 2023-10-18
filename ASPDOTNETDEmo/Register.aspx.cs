using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASPDOTNETDEmo
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\SIVARAMAIAH\\source\\repos\\ASPDOTNETDEmo\\ASPDOTNETDEmo\\App_Data\\DatabaseDemo.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
            con.Open();
        }
        protected void Button1_Click(object sender,EventArgs e)
        {
            HttpCookie c = new HttpCookie("MyCookie");
            c.Value = TextBox1.Text;
            Response.Cookies.Add(c);
          string query = "insert into [dbo].[register] values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "'," + TextBox3.Text + ")";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandText = query;
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("some details gone wrong please verify them again");
            }

        }
    }
}
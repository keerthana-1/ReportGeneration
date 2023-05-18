using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationActivity
{
    public partial class retest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void AuditStatusTextBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Project_Name"] = Project.Text;
            int retest;
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string Name = Project.Text;
            SqlCommand cmd = new SqlCommand("select Top 1 Retest from Retest where Application_Name=@Name order by Retest DESC", con);
            cmd.Parameters.AddWithValue("@Name", Name);
            con.Open();
            SqlDataReader DR1 = cmd.ExecuteReader();
            if (DR1.Read())
            {
               retest= (int)DR1.GetValue(0);
                retest = retest + 1;
                Retest.Text = Convert.ToString(retest);
            }

            
            con.Close();
        }
    }
}
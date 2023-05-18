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
    public partial class EditVulnerabilities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            DataTable dt = (DataTable)Session["Data"];
            if (!Page.IsPostBack)
            {

                GridView1.DataSource = dt;
                GridView1.DataBind();
                pname.Text = (string)Session["Projectname"];
                Status.Text = (string)Session["status"];


                foreach (DataRow dr in dt.Rows)
                {
                    SqlCommand cmd;
                    cmd = new SqlCommand("StoreProjVulner", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProjName", pname.Text);
                    cmd.Parameters.AddWithValue("@Name", dr[0]);
                    cmd.Parameters.AddWithValue("@ProjStatus", Status.Text);
                    cmd.Parameters.AddWithValue("@Severity", dr[2]);
                    cmd.Parameters.AddWithValue("@Description", dr[5]);
                    cmd.Parameters.AddWithValue("@Impact", dr[6]);
                    cmd.Parameters.AddWithValue("@Recommendation", dr[7]);

                    cmd.Parameters.AddWithValue("@AppType", dr[1]);
                    cmd.Parameters.AddWithValue("@CWE_CVE_id", dr[3]);
                    cmd.Parameters.AddWithValue("@OWASP", dr[4]);
                    cmd.Parameters.AddWithValue("@Attributing_Factor", dr[8]);


                    int i = cmd.ExecuteNonQuery();

                }
            }
            con.Close();
        }

                
        protected void Gvbind()
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Vulnerability", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSourceID = null;
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            con.Close();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string project_name = pname.Text;
            string status = Status.Text;
            /*string vulnerability_name = GridView1.DataKeys[e.RowIndex].Value.ToString();*/
            string apptype = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string severity = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            //string cve_cwe = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string owasp = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string description = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string impact = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string recommendation = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string AF = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
            string observation = ((TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);

            SqlCommand cmd = new SqlCommand("update  project_Vulnerabilities set AppType='" + apptype + "',Severity='" + severity + "',OWASP='" + owasp + "',Description='" + description + "',Impact= '" + impact + "',Recommendation='" + recommendation + "',Attributing_Factor='" + AF + "',Observation='" + observation + "' where Project_Name='"+project_name+"' and Audit_Status='"+status+"'", con);
            con.Open();
            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data has updated')</script>");
                GridView1.EditIndex = -1;
                Gvbind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Gvbind();
        }

       
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Gvbind();
        }

    }
}
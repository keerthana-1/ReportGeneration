using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationActivity
{
    public partial class ProjectSummary : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Gvbind();
            }
        }
       
        protected void Gvbind()
        {
            using (SqlConnection cs = new SqlConnection(strcon))
            {
                cs.Open();
                SqlCommand cmd = new SqlCommand("select * from project", cs);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSourceID = null;
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Gvbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Name = GridView1.DataKeys[e.RowIndex].Value.ToString();
            string Dept = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string AuditStatus = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string Auditor = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            using (SqlConnection cs = new SqlConnection(strcon))
            {
                cs.Open();
                SqlCommand cmd = new SqlCommand("update Project set Department_Name='" + Dept + "',AuditStatus='" + AuditStatus + "',AuditorName='" + Auditor + "' ", cs);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Data has updated')</script>");
                    GridView1.EditIndex = -1;
                    Gvbind();
                }
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Gvbind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Add")
            {
                Response.Redirect("add_vulnerabilities.aspx");
            }
        }
        protected void Search_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}
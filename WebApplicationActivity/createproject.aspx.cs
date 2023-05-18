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
    public partial class createproject : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
                Calendar3.Visible = false;
            }
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime sd;
            string start = "";
            sd = DateTime.Parse(Calendar1.SelectedDate.ToString());
            start = sd.ToString("MM/dd/yyyy");
            StartDate.Text = start;
            Calendar1.Visible = false;


        }
        protected void Calendar3_SelectionChanged(object sender, EventArgs e)
        {
            DateTime ed;
            string end = "";
            ed = DateTime.Parse(Calendar3.SelectedDate.ToString());
            end = ed.ToString("MM/dd/yyyy");
            EndDate.Text = end;
            Calendar3.Visible = false;
        }
        protected void ImageButton2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }
        protected void ImageButton4_Click(object sender, EventArgs e)
        {
            Calendar3.Visible = true;
        }
        

        protected void Submit_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand cmd;
            cmd = new SqlCommand("create_project", con);
            cmd.CommandType = CommandType.StoredProcedure;
            
            cmd.Parameters.AddWithValue("@Application_Name", Name.Text);
            cmd.Parameters.AddWithValue("@Department_Name", Dept.Text);
            cmd.Parameters.AddWithValue("@Category_of_organization", Category.Text);
            cmd.Parameters.AddWithValue("@Sector_of_organization", Sector.Text);
            cmd.Parameters.AddWithValue("@Type_of_Audit", AuditType.Text);
            cmd.Parameters.AddWithValue("@Reason_for_Audit", Reason.Text);
            cmd.Parameters.AddWithValue("@State", State.Text);
            cmd.Parameters.AddWithValue("@URL", URL.Text);
            cmd.Parameters.AddWithValue("@TestedAppVersion", AppVersion.Text);
            System.Web.UI.HtmlControls.HtmlTextArea client = (System.Web.UI.HtmlControls.HtmlTextArea)(form1.FindControl("SPOC"));
            string spoc = client.Value;
            cmd.Parameters.AddWithValue("@SPOC_Details", spoc);
            cmd.Parameters.AddWithValue("@StartDate", StartDate.Text);
            cmd.Parameters.AddWithValue("@EndDate",EndDate.Text);
            cmd.Parameters.AddWithValue("@AuditStatus", AuditStatus.Text);
            cmd.Parameters.AddWithValue("@AuditorName", Auditor.Text);

           

            SqlCommand cmd1;
            cmd1 = new SqlCommand("RetestInsert", con);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.Parameters.AddWithValue("@Name", Name.Text);
            cmd1.Parameters.AddWithValue("@StartDate", StartDate.Text);
            cmd1.Parameters.AddWithValue("@EndDate", EndDate.Text);
            cmd1.Parameters.AddWithValue("@AuditStatus", AuditStatus.Text);
            cmd1.Parameters.AddWithValue("@Auditor", Auditor.Text);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            int i1 = cmd1.ExecuteNonQuery();
            con.Close();

            Name.Text = string.Empty;
            Dept.Text = string.Empty;
            Category.Text = string.Empty;
            Sector.Text = string.Empty;
            AuditType.Text = string.Empty;
            Reason.Text = string.Empty;
            State.Text = string.Empty;
            URL.Text = string.Empty;
            AppVersion.Text = string.Empty;
            
            StartDate.Text = string.Empty;
            EndDate.Text = string.Empty;
            AuditStatus.Text = string.Empty;
            Auditor.Text = string.Empty;

        }
    }
}
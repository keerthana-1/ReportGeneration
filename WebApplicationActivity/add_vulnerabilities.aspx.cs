using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationActivity
{
    public partial class add_vulnerabilities : System.Web.UI.Page
    {
         public DataTable dataTable;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("Name");
            dt.Columns.Add("AppType");
            dt.Columns.Add("Severity");
            dt.Columns.Add("CWE_CVE_id");
            dt.Columns.Add("OWASP");
            dt.Columns.Add("Description");
            dt.Columns.Add("Impact");
            dt.Columns.Add("Recommendation");
            dt.Columns.Add("Attributing_Factor");
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (((CheckBox)row.Cells[9].FindControl("CheckBox1")).Checked)
                    dt.Rows.Add(row.Cells[0].Text, row.Cells[1].Text, row.Cells[2].Text, row.Cells[3].Text, row.Cells[4].Text, row.Cells[5].Text, row.Cells[6].Text, row.Cells[7].Text, row.Cells[8].Text);


            }
            Session["Data"] = dt;
            Session["Projectname"] = DropDownList1.Text;
            Session["status"] = DropDownList2.Text;
            Response.Redirect("EditVulnerabilities.aspx");
        }
    }
}
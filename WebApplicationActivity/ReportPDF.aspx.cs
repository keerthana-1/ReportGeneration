using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationActivity
{
    public partial class ReportPDF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProjName.Text = (string)Session["Projectname"];

        }
    }
}
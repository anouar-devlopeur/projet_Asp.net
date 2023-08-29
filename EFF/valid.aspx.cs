using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF
{
    public partial class valid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Annonce_DE_Travail;Integrated Security=True");
            SqlCommand cmd = new SqlCommand($@"update Annonceur set Etat = 'valide' where Ref = '{Request.Params["ref"]}'", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("~/Recherche Une Annonce De Travail.aspx");
        }
    }
}
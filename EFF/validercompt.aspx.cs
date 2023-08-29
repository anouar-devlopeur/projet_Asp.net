using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF
{
    public partial class validercompt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Annonce_DE_Travail;Integrated Security=True");
            SqlCommand cmd = new SqlCommand($@"select Ref, Nom, Date_Creation, Email, Telephone from Annonceur where Etat = 'En attente'", cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }
    }
}
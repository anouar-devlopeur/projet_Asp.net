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
    public partial class Recherche_Une_Annonce_De_Travail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Annonce_DE_Travail;Integrated Security=True");
            SqlCommand cmd = new SqlCommand($@" select a.Ref, a.Titre, ar.Logo 
                                                from Annonce a, Annonceur ar 
                                                where a.RefAnnonceur = ar.Ref
                                                and ar.Etat = 'valide'", cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            dr.Close();
            cn.Close();
            
            DataList1.DataSource = dt;
            DataList1.DataBind(); 
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF
{
    public partial class detail_annonce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string RefP = Request.Params["ref"];
            SqlConnection cn = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Annonce_DE_Travail;Integrated Security=True");
            SqlCommand cmd = new SqlCommand($@"SELECT Annonce.Ref, Annonce.Titre, Annonce.Date_Debut, Annonce.Date_Fin, Annonce.Profil_Rechercher, Annonce.Descriptionn, Annonce.[Piéces_Demandé], Annonceur.Nom, Annonceur.Email, 
                                                                      Annonceur.Telephone, Annonceur.Adresse, Annonceur.Logo
                                                FROM Annonce INNER JOIN Annonceur ON Annonce.refAnnonceur = Annonceur.Ref
                                                WHERE Annonce.Ref = {RefP}", cn);
            if(cn.State == System.Data.ConnectionState.Closed)
            {
                cn.Open();
            }
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                logoimg.ImageUrl = dr.GetString(11);
                @ref.Text = dr.GetString(0);
                Titre.Text = dr.GetString(1);
                dd.Text = dr.GetDateTime(2).ToString();
                df.Text = dr.GetDateTime(3).ToString();
                Profil.Text = dr.GetString(4);
                Description.Text = dr.GetString(5);
                Pieces.Text = dr.GetString(6);
                Nom.Text = dr.GetString(7);
                Email.Text = dr.GetString(8);
                Telephone.Text = dr.GetInt32(9).ToString();
                Adresse.Text = dr.GetString(10);
            }
            dr.Close();
            cn.Close();
        }
    }
}
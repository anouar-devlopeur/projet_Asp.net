using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF
{
    public partial class Profile__Annonce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string RefP = Request.Params["ref"];
            SqlConnection cn = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Annonce_DE_Travail;Integrated Security=True");
            SqlCommand cmd = new SqlCommand($"select * from Annonceur where Ref = '{RefP}' ", cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                @ref.Text = dr.GetString(0);
                @RaisonSoscial.Text = dr.GetString(1);
                @Email.Text = dr.GetString(3);
                @Datecreation.Text = dr.GetDateTime(2).ToShortDateString() ;
                @Téléphone.Text = dr.GetInt32(4).ToString() ;
                @DemainedeTravail.Text = dr.GetString(6);
                @Adresse.Text = dr.GetString(7);
                @FormeJuridique.Text = dr.GetString(8);
                @Présentation.Text = dr.GetString(5);
                logoimg.ImageUrl = dr.GetString(9);
            }
            dr.Close();
            cn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/connecter.aspx");
        }
    }
}
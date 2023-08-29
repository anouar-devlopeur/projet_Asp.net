using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF
{
    public partial class crée_une_annonce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["ref"] == null)
            {
                Response.Redirect($"~/Connecter.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string reference = Session["ref"].ToString();
            SqlConnection cn = new SqlConnection(@"Data Source=(local);Initial Catalog=Annonce_DE_Travail;Integrated Security=True");
            SqlCommand cmd = new SqlCommand($@"insert into Annonce values('{TextBoxReference.Text}','{TextBoxTitre.Text}','{TextBoxDateDébut.Text}','{TextBoxDateFin.Text}','{TextBoxProfilRecherché.Text}', '{TextBoxDescription.Text}', '{TextBoxPiéces.Text}', '{reference}')", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect($"~/detail annonce.aspx?ref={TextBoxReference.Text}");
        }
    }
}
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
    public partial class Créer__Un__Compte__Annonceur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string logo = Path.Combine(Server.MapPath(@"~/imgs/"), FileUploadLogo.FileName);
            FileUploadLogo.SaveAs(logo);
            SqlConnection cn = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Annonce_DE_Travail;Integrated Security=True");
            SqlCommand cmd = new SqlCommand($@"insert into Annonceur values('{TextBoxRef.Text}','{TextBoxRaisonSoscial.Text}','{Calendar1.SelectedDate.ToShortDateString()}','{TextBoxEmail.Text}',{TextBoxTéléphone.Text}, '{TextBoxPrésentation.Text}', '{TextBoxDomaineTravail.Text}', '{TextBoxAdresse.Text}', '{TextBoxFormeJuridique.Text}', '~/imgs/{FileUploadLogo.FileName}', '{TextBoxLogin.Text}', '{TextBoxMotPasse.Text}', 'En attente')", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect($"~/Profile  Annonce.aspx?ref={TextBoxRef.Text}");
        }
    }
}
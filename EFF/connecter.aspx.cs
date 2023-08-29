using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFF
{
    public partial class connecter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            alert.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=ADMIN-PC\SQLEXPRESS;Initial Catalog=Annonce_DE_Travail;Integrated Security=True");
            SqlCommand cmd = new SqlCommand($"select * from {DropDownList1.SelectedValue} where Loginn = '{Login.Text}' and Mot_Passe = '{password.Text}' ", cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {   
                Session.Add("user", dr.GetString(0));
                Session.Add("userType", DropDownList1.SelectedValue);
                if (DropDownList1.SelectedValue == "Annonceur") {
                    Session.Add("ref", dr.GetString(0));
                    Response.Redirect($"~/Profile  Annonce.aspx?ref={dr.GetString(0)}");
                }
                else
                {
                    Response.Redirect("~/validercompt.aspx");
                }
            }
            else
            {
                Label1.Text = "Login et/ou Mot de passe sont incorrects";
                alert.Visible = true;
            }

            dr.Close();
            cn.Close();
        }
    }
}
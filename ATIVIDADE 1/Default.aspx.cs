using System;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATIVIDADE_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEntrar_Click(object sender, EventArgs e)
        {
            if (TxtLogin.Text == "Senac" && TxtSenha.Text == "1234")
            {
                Server.Transfer("MenuInicial.aspx");
            }
            Server.Transfer("semSenha.html");
        }
    }

    public class Conexao
    {
        public string conec = @"SERVER=aulabanco.mysql.dbaas.com.br; DATABASE=aulabanco; UID=aulabanco; PWD=Tilo7110; PORT=3306";
        public MySqlConnection con = null;

        public void AbrirCon()
        {
            try
            {
                con = new MySqlConnection(conec);
                con.Open();
                HttpContext.Current.Response.Write("Conectado com Sucesso");
            }
            catch (Exception ex)
            {

                HttpContext.Current.Response.Write("Erro ao conectar" + ex);
            }
        }
        public void FecharCon()
        {
            try
            {
                con = new MySqlConnection(conec);
                con.Close();
                HttpContext.Current.Response.Write("Fechado com Sucesso");
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}

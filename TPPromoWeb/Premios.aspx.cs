using negocio;
using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPPromoWeb
{
    public partial class Premios : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Mostrar los art en las tarjetas
            ArticuloNegocio articuloNegocio = new ArticuloNegocio();
            ListaArticulos = articuloNegocio.listarConSP();

            if (!IsPostBack)
            {
                RepeaterArticulos.DataSource = ListaArticulos;
                RepeaterArticulos.DataBind();
            }

            //Obtengo el vocher ingresado antes
            Voucher voucher = (Voucher)Session["voucherActual"];

            if (voucher == null)
            {
                //redirijo si no hay nada en la sesion
                string script = "alert('No hay ningun voucher ingresado.');" +
                         "window.location.href='Default.aspx';";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }

        }

        protected void botonElegir_Click(object sender, EventArgs e)
        {
            Voucher voucher = (Voucher)Session["voucherActual"];

            Button button = (Button)sender;
            int idArticuloSeleccionado = Convert.ToInt32(button.CommandArgument);

            if (voucher != null)
            {
                //Agregp el articulo al voucher y lo guardo
                voucher.IdArticulo = idArticuloSeleccionado;
                Session["voucherActual"] = voucher;

                // Buscar el nombre del artículo seleccionado
                Articulo articuloSeleccionado = ListaArticulos.FirstOrDefault(a => a.Id == idArticuloSeleccionado);

                if (articuloSeleccionado != null)
                {
                    //confirmacion para redirigir
                    string script = $"alert('Usted eligió el artículo: {articuloSeleccionado.Nombre}.');" +
                                "window.location.href='Login.aspx';";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                }

            }


        }
    }
}
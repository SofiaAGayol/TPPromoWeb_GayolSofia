using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPPromoWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botonValidar_Click(object sender, EventArgs e)
        {
            Voucher voucher;
            VoucherNegocio voucherNegocio = new VoucherNegocio() ;
            //Codigo ingresado en el txt
            string codigoVoucher = validacionVoucher.Text;

            //Uso el validador
            if (voucherNegocio.ValidarVoucher(codigoVoucher))
            {
                Response.Redirect("Premios.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Este código es inválido o ya ha sido utilizado.');", true);
            }
        }

        

    }
}
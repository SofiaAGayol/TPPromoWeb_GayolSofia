<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="TPPromoWeb.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row g-3 needs-validation" novalidate="">
        <div class="col-12">
            <asp:Label for="validationTooltip00" class="form-label" runat="server" Text="Label">DNI</asp:Label>
            <asp:TextBox ID="validationTooltip00" type="text" class="form-control" placeholder="12345678" required="" runat="server"></asp:TextBox>
            <div class="valid-tooltip">
                Looks good!
            </div>
        </div>
        <div class="col-md-4 position-relative">
            <asp:Label for="validationTooltip01" class="form-label" runat="server" Text="Label">Nombre</asp:Label>
            <asp:TextBox ID="validationTooltip01" type="text" class="form-control" value="Juan" required="" runat="server"></asp:TextBox>
            <div class="valid-tooltip">
                Looks good!
            </div>
        </div>
        <div class="col-md-4 position-relative">
            <asp:Label for="validationTooltip02" class="form-label" runat="server" Text="Label">Apellido</asp:Label>
            <asp:TextBox ID="validationTooltip02" type="text" class="form-control" placeholder="Argento" required="" runat="server"></asp:TextBox>
            <div class="valid-tooltip">
                Looks good!
            </div>
        </div>
        <div class="col-md-4 position-relative">
            <asp:Label for="validationTooltipUsername" class="form-label" runat="server" Text="Label">Email</asp:Label>
            <div class="input-group has-validation">
                <span class="input-group-text" id="validationTooltipUsernamePrepend">@</span>
                <asp:TextBox ID="validationTooltipUsername" type="text" class="form-control" placeholder="12345678" aria-describedby="validationTooltipUsernamePrepend" required="" runat="server"></asp:TextBox>
                <div class="invalid-tooltip">
                    Please choose a unique and valid username.
                </div>
            </div>
        </div>
        <div class="col-md-6 position-relative">
            <asp:Label for="validationTooltip03" class="form-label" runat="server" Text="Label">Direccion</asp:Label>
            <asp:TextBox ID="validationTooltip03" type="text" class="form-control" placeholder="Mi ciudad" required="" runat="server"></asp:TextBox>
            <div class="invalid-tooltip">
                Please provide a valid city.
            </div>
        </div>
        <div class="col-md-3 position-relative">
            <asp:Label for="validationTooltip04" class="form-label" runat="server" Text="Label">Ciudad</asp:Label>
            <select class="form-select" id="validationTooltip04" required>
                <option selected disabled value="">Choose...</option>
                <option>...</option>
            </select>
            <div class="invalid-tooltip">
                Please select a valid state.
            </div>
        </div>
        <div class="col-md-3 position-relative">
            <asp:Label for="validationTooltip05" class="form-label" runat="server" Text="Label">CP</asp:Label>
            <asp:TextBox ID="validationTooltip05" type="text" class="form-control" placeholder="XXXX" required="" runat="server"></asp:TextBox>
            <div class="invalid-tooltip">
                Please provide a valid zip.
            </div>
        </div>
        <div class="col-12">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                <asp:Label class="form-check-label" for="invalidCheck" runat="server" Text="Label">Acepto los terminos y condiciones.</asp:Label>
                <div class="invalid-feedback">
                    Debe estar de acuerdo antes de enviar los datos.
                </div>
            </div>
        </div>
        <div class="col-12">
            <asp:Button class="btn btn-primary" type="submit" runat="server" Text="PARTICIPAR" />
        </div>
    </div>


</asp:Content>

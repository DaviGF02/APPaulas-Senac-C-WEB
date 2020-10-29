<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ATIVIDADE_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Tela de Login</h1>
        </div>
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" Text="Login:   "></asp:Label>
        <asp:TextBox ID="TxtLogin" runat="server" Font-Size="25pt"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="30pt" Text="Senha:   "></asp:Label>
        <asp:TextBox ID="TxtSenha" runat="server" Font-Size="25pt"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BtnEntrar" runat="server" Font-Size="30pt" Text="Entrar" OnClick="BtnEntrar_Click" />
        <br />
        <br />
        <h2>Não possui senha, <a href="semSenha.html"> clique aqui</a></h2>
    </form>
</body>
</html>

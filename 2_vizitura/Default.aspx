<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_2_vizitura.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Jelentkezzen a vízitúrára!</h1>
            Válassza ki a túra típusát:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList runat="server" ID="rb_list" RepeatDirection="Horizontal" Height="16px" Width="307px">
                <asp:ListItem Text="Félnapos" />
                <asp:ListItem Text="Egész napos" />
                <asp:ListItem Text="Éjszakai túra" />

            </asp:RadioButtonList>
            <br />
            Válassza ki a kajak típusát:
            <asp:DropDownList ID="dd_list" runat="server">
                <asp:ListItem Text="Egyszemélyes kajak" />
                <asp:ListItem Text="Kétszemélyes kajak" />
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Kiegészítők:
            <asp:CheckBoxList ID="cb_list" runat="server" RepeatDirection="Horizontal" Width="392px">
                <asp:ListItem Text="Mentőmellény" />
                <asp:ListItem Text="Horgászbot" />
                <asp:ListItem Text="Vízhatlan tartály" />
            </asp:CheckBoxList>
            <br />
            Válassz dátumot:
            <asp:Calendar ID="cal_datum" runat="server"/>
            <br />
            <asp:Button Text="Jelentkezem" ID="b_jelentkezes" runat="server" OnClick="b_jelentkezes_Click" />
            <br />
            <br />
            <asp:Label ID="l_uzenet" Text="" runat="server" />
        </div>
    </form>
</body>
</html>

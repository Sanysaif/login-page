<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 190px">
    
        <asp:Label ID="Label_Welcome" runat="server" Text="Welcome..."></asp:Label>
        <br />
        <asp:Button ID="Button_Logout" runat="server" OnClick="Button_Logout_Click" Text="Logout" />
    
    </div>
    </form>
</body>
</html>

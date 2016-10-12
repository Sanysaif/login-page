<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [NameData]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceRegistration" CellSpacing="5" HorizontalAlign="Center" Height="415px" Width="440px">
            <Columns>
                <asp:BoundField DataField="NameId" HeaderText="NameId" SortExpression="NameId" />
                <asp:BoundField DataField="Names" HeaderText="Names" SortExpression="Names" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourceRegistration" Height="442px" style="text-align: right" Width="713px">
            <series>
                <asp:Series Name="Series1" XValueMember="Names" YValueMembers="Age">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1" Area3DStyle-Enable3D="true">
<Area3DStyle Enable3D="True"></Area3DStyle>
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
    
    </div>
    </form>
</body>
</html>

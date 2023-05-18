<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allprojects.aspx.cs" Inherits="WebApplicationActivity.allprojects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; All Projects</h2>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Application_Name" HeaderText="Application_Name" SortExpression="Application_Name" />
                <asp:BoundField DataField="Department_Name" HeaderText="Department_Name" SortExpression="Department_Name" />
                <asp:BoundField DataField="Category_of_organization" HeaderText="Category_of_organization" SortExpression="Category_of_organization" />
                <asp:BoundField DataField="Sector_of_organization" HeaderText="Sector_of_organization" SortExpression="Sector_of_organization" />
                <asp:BoundField DataField="Type_of_Audit" HeaderText="Type_of_Audit" SortExpression="Type_of_Audit" />
                <asp:BoundField DataField="Reason_for_Audit" HeaderText="Reason_for_Audit" SortExpression="Reason_for_Audit" />
                <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
                <asp:BoundField DataField="TestedAppVersion" HeaderText="TestedAppVersion" SortExpression="TestedAppVersion" />
                <asp:BoundField DataField="SPOC_Details" HeaderText="SPOC_Details" SortExpression="SPOC_Details" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                <asp:BoundField DataField="AuditStatus" HeaderText="AuditStatus" SortExpression="AuditStatus" />
                <asp:BoundField DataField="AuditorName" HeaderText="AuditorName" SortExpression="AuditorName" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGeneratorConnectionString %>" SelectCommand="SELECT [Application_Name], [Department_Name], [Category_of_organization], [Sector_of_organization], [Type_of_Audit], [Reason_for_Audit], [URL], [TestedAppVersion], [SPOC_Details], [StartDate], [EndDate], [AuditStatus], [AuditorName], [Id] FROM [Project]"></asp:SqlDataSource>
    </form>
</body>
</html>

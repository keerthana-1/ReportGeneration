<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_vulnerabilities.aspx.cs" Inherits="WebApplicationActivity.add_vulnerabilities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        #form1 {
            height: 624px;
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGenerator %>" SelectCommand="SELECT * FROM [Vulnerability]"></asp:SqlDataSource>
            <strong>Project Name</strong> :
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Application_Name" DataValueField="Application_Name">
            </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Project Status</strong> :
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="AuditStatus" DataValueField="AuditStatus">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGenerator %>" SelectCommand="SELECT DISTINCT [AuditStatus] FROM [Project]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGenerator %>" SelectCommand="SELECT DISTINCT [Application_Name] FROM [Project]"></asp:SqlDataSource>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" CssClass="form-control" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Name" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                    <asp:BoundField DataField="AppType" HeaderText="AppType" SortExpression="AppType" />
                    <asp:BoundField DataField="Severity" HeaderText="Severity" SortExpression="Severity" />
                    <asp:BoundField DataField="CWE_CVE_id" HeaderText="CWE_CVE_id" SortExpression="CWE_CVE_id" />
                    <asp:BoundField DataField="OWASP" HeaderText="OWASP" SortExpression="OWASP" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Impact" HeaderText="Impact" SortExpression="Impact" />
                    <asp:BoundField DataField="Recommendation" HeaderText="Recommendation" SortExpression="Recommendation" />
                    <asp:BoundField DataField="Attributing_Factor" HeaderText="Attributing_Factor" SortExpression="Attributing_Factor" />
                    <asp:TemplateField HeaderText="selected rows">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" BackColor="#336666" Font-Bold="True" Text="ADD" ForeColor="White" Height="28px" OnClick="Button1_Click" Width="66px" />
            <br />

            <br />

        </asp:Panel>
        
    </form>
</body>
</html>

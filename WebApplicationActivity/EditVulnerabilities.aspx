<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditVulnerabilities.aspx.cs" Inherits="WebApplicationActivity.EditVulnerabilities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Project Name:<asp:Label ID="pname" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Audit Status:<asp:Label ID="Status" runat="server" Text="Label"></asp:Label>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="form-control"  Style="margin-right: 56px"  BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4"  OnRowEditing="GridView1_RowEditing"  OnRowUpdating="GridView1_RowUpdating" >
           <Columns>
               
               <asp:BoundField DataField="Name" HeaderText="VulnerabilityName" ReadOnly="true" />
               <asp:BoundField DataField="AppType" HeaderText="AppType" />
               <asp:BoundField DataField="Severity" HeaderText="Severity" />
               <asp:BoundField DataField="CWE_CVE_id" HeaderText="CWE_CVE_id" ReadOnly="True" />
               <asp:BoundField DataField="OWASP" HeaderText="OWASP" />
               <asp:BoundField DataField="Description" HeaderText="Description" />
               <asp:BoundField DataField="Impact" HeaderText="Impact" />
               <asp:BoundField DataField="Recommendation" HeaderText="Recommendation" />
               <asp:BoundField DataField="Attributing_Factor" HeaderText="Attributing_Factor" />

               <asp:BoundField HeaderText="Observation" />

               <asp:CommandField ButtonType="Button" ShowEditButton="True"/>

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
        </div>

 
    </form>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportPDF.aspx.cs" Inherits="WebApplicationActivity.ReportPDF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="ProjName" runat="server" Text="Label"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="VulnerabilityName" HeaderText="VulnerabilityName" SortExpression="VulnerabilityName" />
                    <asp:BoundField DataField="Severity" HeaderText="Severity" SortExpression="Severity" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGenerator %>" SelectCommand="SELECT [VulnerabilityName], [Severity] FROM [project_Vulnerabilities] WHERE ([Project_Name] = @Project_Name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ProjName" Name="Project_Name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                VulnerabilityName:
                <asp:TextBox ID="VulnerabilityNameTextBox" runat="server" Text='<%# Bind("VulnerabilityName") %>' />
                <br />
                CWE_CVE_id:
                <asp:TextBox ID="CWE_CVE_idTextBox" runat="server" Text='<%# Bind("CWE_CVE_id") %>' />
                <br />
                OWASP:
                <asp:TextBox ID="OWASPTextBox" runat="server" Text='<%# Bind("OWASP") %>' />
                <br />
                Severity:
                <asp:TextBox ID="SeverityTextBox" runat="server" Text='<%# Bind("Severity") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                Impact:
                <asp:TextBox ID="ImpactTextBox" runat="server" Text='<%# Bind("Impact") %>' />
                <br />
                Recommendation:
                <asp:TextBox ID="RecommendationTextBox" runat="server" Text='<%# Bind("Recommendation") %>' />
                <br />
                Observation:
                <asp:TextBox ID="ObservationTextBox" runat="server" Text='<%# Bind("Observation") %>' />
                <br />
                Attributing_Factor:
                <asp:TextBox ID="Attributing_FactorTextBox" runat="server" Text='<%# Bind("Attributing_Factor") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                VulnerabilityName:
                <asp:TextBox ID="VulnerabilityNameTextBox" runat="server" Text='<%# Bind("VulnerabilityName") %>' />
                <br />
                CWE_CVE_id:
                <asp:TextBox ID="CWE_CVE_idTextBox" runat="server" Text='<%# Bind("CWE_CVE_id") %>' />
                <br />
                OWASP:
                <asp:TextBox ID="OWASPTextBox" runat="server" Text='<%# Bind("OWASP") %>' />
                <br />
                Severity:
                <asp:TextBox ID="SeverityTextBox" runat="server" Text='<%# Bind("Severity") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                Impact:
                <asp:TextBox ID="ImpactTextBox" runat="server" Text='<%# Bind("Impact") %>' />
                <br />
                Recommendation:
                <asp:TextBox ID="RecommendationTextBox" runat="server" Text='<%# Bind("Recommendation") %>' />
                <br />
                Observation:
                <asp:TextBox ID="ObservationTextBox" runat="server" Text='<%# Bind("Observation") %>' />
                <br />
                Attributing_Factor:
                <asp:TextBox ID="Attributing_FactorTextBox" runat="server" Text='<%# Bind("Attributing_Factor") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                VulnerabilityName:
                <asp:Label ID="VulnerabilityNameLabel" runat="server" Text='<%# Bind("VulnerabilityName") %>' />
                <br />
                CWE_CVE_id:
                <asp:Label ID="CWE_CVE_idLabel" runat="server" Text='<%# Bind("CWE_CVE_id") %>' />
                <br />
                OWASP:
                <asp:Label ID="OWASPLabel" runat="server" Text='<%# Bind("OWASP") %>' />
                <br />
                Severity:
                <asp:Label ID="SeverityLabel" runat="server" Text='<%# Bind("Severity") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                Impact:
                <asp:Label ID="ImpactLabel" runat="server" Text='<%# Bind("Impact") %>' />
                <br />
                Recommendation:
                <asp:Label ID="RecommendationLabel" runat="server" Text='<%# Bind("Recommendation") %>' />
                <br />
                Observation:
                <asp:Label ID="ObservationLabel" runat="server" Text='<%# Bind("Observation") %>' />
                <br />
                Attributing_Factor:
                <asp:Label ID="Attributing_FactorLabel" runat="server" Text='<%# Bind("Attributing_Factor") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGenerator %>" SelectCommand="SELECT [VulnerabilityName], [CWE_CVE_id], [OWASP], [Severity], [Description], [Impact], [Recommendation], [Observation], [Attributing_Factor] FROM [project_Vulnerabilities] WHERE ([Project_Name] = @Project_Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ProjName" Name="Project_Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

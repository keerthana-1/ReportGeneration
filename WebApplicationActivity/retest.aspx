<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="retest.aspx.cs" Inherits="WebApplicationActivity.retest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Height="25px" Text="Select Project :" Width="250px"></asp:Label>
            <asp:DropDownList ID="Project" runat="server" DataSourceID="SqlDataSource1" DataTextField="Application_Name" DataValueField="Application_Name" >
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGenerator %>" SelectCommand="SELECT DISTINCT [Application_Name] FROM [Project] WHERE ([AuditStatus] &lt;&gt; @AuditStatus)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="&quot;Completed&quot;" Name="AuditStatus" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="RetestButton" runat="server" Text="Start Retest" OnClick="Page_Load" />
            <br />
            <br />
            <asp:FormView ID="FormView" runat="server" DataSourceID="SqlDataSource2" >
                          
                <ItemTemplate>
                    Department_Name:
                    <asp:Label ID="Department_NameLabel" runat="server" Text='<%# Bind("Department_Name") %>' />
                    <br />

                    Category_of_organization:
                    <asp:Label ID="Category_of_organizationLabel" runat="server" Text='<%# Bind("Category_of_organization") %>' />
                    <br />
                    Sector_of_organization:
                    <asp:Label ID="Sector_of_organizationLabel" runat="server" Text='<%# Bind("Sector_of_organization") %>' />
                    <br />
                    Type_of_Audit:
                    <asp:Label ID="Type_of_AuditLabel" runat="server" Text='<%# Bind("Type_of_Audit") %>' />
                    <br />
                    Reason_for_Audit:
                    <asp:Label ID="Reason_for_AuditLabel" runat="server" Text='<%# Bind("Reason_for_Audit") %>' />
                    <br />
                    URL:
                    <asp:Label ID="URLLabel" runat="server" Text='<%# Bind("URL") %>' />
                    <br />
                    TestedAppVersion:
                    <asp:Label ID="TestedAppVersionLabel" runat="server" Text='<%# Bind("TestedAppVersion") %>' />
                    <br />
                    SPOC_Details:
                    <asp:Label ID="SPOC_DetailsLabel" runat="server" Text='<%# Bind("SPOC_Details") %>' />
                    <br />
                    StartDate:
                    <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate","{0:d}") %>' />
                    <br />
                    EndDate:
                    <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate","{0:d}") %>' />
                    <br />
                    AuditStatus:
                    <asp:Label ID="AuditStatusLabel" runat="server" Text='<%# Bind("AuditStatus") %>' />
                    <br />
                    AuditorName:
                    <asp:Label ID="AuditorNameLabel" runat="server" Text='<%# Bind("AuditorName") %>' />
                    <br />
                    State:
                    <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                      <div class="form-group">
                        <asp:LinkButton ID="InsertButton" class="btn btn-dark"  Text="New"  CommandName="New"  RunAt="server"/>     
                        </div>
                </ItemTemplate>

                  <InsertItemTemplate>
                 <div class="form-group row">
                &nbsp;&nbsp;
                    StartDate:
                   
                 <div class="col-sm-5">     <asp:Calendar ID="StartDate" runat="server" SelectedDate='<%# Bind("StartDate") %>' />
                </div></div>
                       <div class="form-group row">
                    EndDate:
                    <div class="col-sm-5">  <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("EndDate") %>' />
                    </div></div>
                        <div class="form-group row">
                    AuditStatus:
                  <div class="col-sm-5">    <asp:DropDownList ID="AuditStatusTextBox" class="btn btn-secondary dropdown-toggle" runat="server" Text='<%# Bind("AuditStatus") %>' AutoPostBack="true" OnSelectedIndexChanged="AuditStatusTextBox_SelectedIndexChanged" >
                                                  <asp:ListItem>Initial</asp:ListItem>
                                                <asp:ListItem>Confirmatory</asp:ListItem>
                                                 <asp:ListItem>Completed</asp:ListItem>
                                            </asp:DropDownList>
                    </div></div>
                    <div class="form-group row">
                    AuditorName:
                   <div class="col-sm-5">   <asp:TextBox ID="AuditorNameTextBox" runat="server" Text='<%# Bind("AuditorName") %>' />
                    </div></div>
                         
                 <div>
                    <asp:LinkButton ID="Button" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
              </div>  </InsertItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGenerator %>" SelectCommand="SELECT [Department_Name], [Category_of_organization], [Sector_of_organization], [Type_of_Audit], [Reason_for_Audit], [URL], [TestedAppVersion], [SPOC_Details], [StartDate], [EndDate], [AuditStatus], [AuditorName], [State] FROM [Project] WHERE ([Application_Name] = @Application_Name)" 
                InsertCommand="insert into Retest(Application_Name,Start_Date,End_Date,Audit_Status,Auditor_Name,Retest) values(@Application_Name,@StartDate,@EndDate, 
                @AuditStatus, @AuditorName, @Retest)" >
                <SelectParameters>
                    <asp:ControlParameter ControlID="Project" Name="Application_Name" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <InsertParameters>
                     <asp:ControlParameter ControlID="Project" Name="Application_Name" PropertyName="SelectedValue" Type="String" />
                     <asp:Parameter Name="StartDate" Type="DateTime" />
                    <asp:Parameter Name="EndDate" Type="DateTime" />
                    <asp:Parameter Name="AuditStatus" Type="string" />
                    <asp:Parameter Name="AuditorName" Type="string" />
                      <asp:ControlParameter ControlID="Retest" Name="Retest" PropertyName="Text" Type="Int32" />
                     

                </InsertParameters>
            </asp:SqlDataSource>
        </div>
         <div>   <asp:TextBox ID="Retest" runat="server" Visible="False" />
                    </div>
        <asp:Button ID="Submit" runat="server" Text="Submit" />
    </form>
</body>
</html>

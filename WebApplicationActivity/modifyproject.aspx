<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifyproject.aspx.cs" Inherits="WebApplicationActivity.modifyproject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Modify Project</h2>
    <form id="form1" runat="server">
        
             <div class="form-group row">
                 <asp:Label ID="Label11" class="col-sm-2 col-form-label" runat="server" Font-Bold="True" Text="Application Name:" Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5">
               <asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="Name" runat="server" DataSourceID="SqlDataSource2" DataTextField="Application_Name" DataValueField="Application_Name">
             </asp:DropDownList>  </div> </div>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGenerator %>" SelectCommand="SELECT DISTINCT [Application_Name] FROM [Project]"></asp:SqlDataSource>
       
               

         <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
             <ItemTemplate>
                 Department_Name:
                 <asp:Label ID="Department_NameLabel" runat="server" Text='<%# Bind("Department_Name") %>' />
                 <br /><br />
                 Category_of_organization:
                 <asp:Label ID="Category_of_organizationLabel" runat="server" Text='<%# Bind("Category_of_organization") %>' />
                 <br /><br />
                 Sector_of_organization:
                 <asp:Label ID="Sector_of_organizationLabel" runat="server" Text='<%# Bind("Sector_of_organization") %>' />
                 <br /><br />
                 Type_of_Audit:
                 <asp:Label ID="Type_of_AuditLabel" runat="server" Text='<%# Bind("Type_of_Audit") %>' />
                 <br /><br />
                 Reason_for_Audit:
                 <asp:Label ID="Reason_for_AuditLabel" runat="server" Text='<%# Bind("Reason_for_Audit") %>' />
                 <br /><br />
                 URL:
                 <asp:Label ID="URLLabel" runat="server" Text='<%# Bind("URL") %>' />
                 <br /><br />
                 TestedAppVersion:
                 <asp:Label ID="TestedAppVersionLabel" runat="server" Text='<%# Bind("TestedAppVersion") %>' />
                 <br /><br />
                 SPOC_Details:
                 <asp:Label ID="SPOC_DetailsLabel" runat="server" Text='<%# Bind("SPOC_Details") %>' />
                 <br /><br />
                 StartDate:
                 <asp:Label ID="StartDateLabel" runat="server" Text='<%# Eval("StartDate","{0:d}") %>' />
                 <br /><br />
                 EndDate:
                 <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate","{0:d}") %>' />
                 <br /><br />
                 AuditStatus:
                 <asp:Label ID="AuditStatusLabel" runat="server" Text='<%# Bind("AuditStatus") %>' />
                 <br /><br />
                 AuditorName:
                 <asp:Label ID="AuditorNameLabel" runat="server" Text='<%# Bind("AuditorName") %>' />
                 <br /><br />
                 State:
                 <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                 <br /><br />
                  <div class="form-group">
                        <asp:LinkButton ID="EditButton" class="btn btn-dark"  Text="Edit"  CommandName="Edit"  RunAt="server"/>     
                        </div>
             </ItemTemplate>
             <EditItemTemplate> <div class="form-group row">
                &nbsp;&nbsp;
                 Department_Name:
                <div class="col-sm-5"> <asp:TextBox CssClass="form-control" ID="Department_NameTextBox" runat="server" Text='<%# Bind("Department_Name") %>' />
                 </div></div>

                  <div class="form-group row">
                &nbsp;&nbsp;
                 Category_of_organization:
                <div class="col-sm-5"> <asp:DropDownList  class="btn btn-secondary dropdown-toggle" ID="Category_of_organizationTextBox" runat="server" Text='<%# Bind("Category_of_organization") %>' >
                      <asp:ListItem>State Government Department</asp:ListItem>
                    <asp:ListItem>Central Ministry/ Department</asp:ListItem>
                    <asp:ListItem>Organization under Government Department</asp:ListItem>
                    <asp:ListItem>Public sector organizations</asp:ListItem>
                    <asp:ListItem>Private Sector</asp:ListItem>
                 </asp:DropDownList>
                 </div></div>

                       <div class="form-group row">
                &nbsp;&nbsp;
                 Sector_of_organization:
                <div class="col-sm-5"> <asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="Sector_of_organizationTextBox" runat="server" Text='<%# Bind("Sector_of_organization") %>' >
                      <asp:ListItem>Defence</asp:ListItem>
                    <asp:ListItem>Energy</asp:ListItem>
                    <asp:ListItem>Finance</asp:ListItem>
                    <asp:ListItem>Space</asp:ListItem>
                    <asp:ListItem>Information &amp; Communication Technology</asp:ListItem>
                    <asp:ListItem>Information &amp; Broadcasting</asp:ListItem>
                    <asp:ListItem>Transportation</asp:ListItem>
                    <asp:ListItem>Public Essential Services &amp; Utilities</asp:ListItem>
                    <asp:ListItem>Law Enforcement &amp; Security</asp:ListItem>
                 </asp:DropDownList>
                 </div></div>

                 <div class="form-group row">
                &nbsp;&nbsp;
                 Type_of_Audit:
                <div class="col-sm-5"> <asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="Type_of_AuditTextBox" runat="server" Text='<%# Bind("Type_of_Audit") %>' >
                     <asp:ListItem>Website /Web application audit</asp:ListItem>
                    <asp:ListItem>Mobile Application Audit</asp:ListItem>
                    <asp:ListItem>Server Side Audits</asp:ListItem>
                    <asp:ListItem>Client-Side Audits</asp:ListItem>
                    <asp:ListItem>Network Infrastructure Audits</asp:ListItem>
                    <asp:ListItem>Wireless Infrastructure Audits</asp:ListItem>
                    <asp:ListItem>Source Code Review</asp:ListItem>
                    <asp:ListItem>Cloud Security Audit</asp:ListItem>
                    <asp:ListItem>Any other (pls specify)</asp:ListItem>
                 </asp:DropDownList>
                 </div></div>

                      <div class="form-group row">
                &nbsp;&nbsp;
                 Reason_for_Audit:
                 <div class="col-sm-5"><asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="Reason_for_AuditTextBox" runat="server" Text='<%# Bind("Reason_for_Audit") %>' >
                     <asp:ListItem>Periodic Audit as per Policy of organization</asp:ListItem>
                    <asp:ListItem>Regulatory directions</asp:ListItem>
                    <asp:ListItem>Government directions</asp:ListItem>
                    <asp:ListItem>New application/Infrastructure</asp:ListItem>
                    <asp:ListItem>Change in process or infrastructure</asp:ListItem>
                    <asp:ListItem>Incident/ Breach in Sector</asp:ListItem>
                    <asp:ListItem>Incident/ Breach in Organisation</asp:ListItem>
                    <asp:ListItem>Certificate of safe hosting</asp:ListItem>
                    <asp:ListItem>Not Known</asp:ListItem>
                 </asp:DropDownList>
                 </div></div>

                 <div class="form-group row">
                &nbsp;&nbsp;
                 URL:
                <div class="col-sm-5"> <asp:TextBox CssClass="form-control" ID="URLTextBox" runat="server" Text='<%# Bind("URL") %>' />
                 </div></div>

                 <div class="form-group row">
                &nbsp;&nbsp;
                 TestedAppVersion:
                <div class="col-sm-5"> <asp:TextBox CssClass="form-control" ID="TestedAppVersionTextBox" runat="server" Text='<%# Bind("TestedAppVersion") %>' />
                 </div></div>

                 <div class="form-group row">
                &nbsp;&nbsp;
                 SPOC_Details:
                <div class="col-sm-5"> <asp:TextBox CssClass="form-control" ID="SPOC_DetailsTextBox" runat="server" Text='<%# Bind("SPOC_Details") %>' />
                 </div></div>

                     <div class="form-group row">
                &nbsp;&nbsp;
                StartDate:
                 <div class="col-sm-5"> <asp:Calendar ID="StartDate" runat="server" VisibleDate='<%# Eval("StartDate") %>' SelectedDate='<%# Bind("StartDate") %>' />
                </div></div>

                          <div class="form-group row">
                &nbsp;&nbsp;
                 EndDate:
                    <div class="col-sm-5"> <asp:Calendar ID="Calendar1" runat="server" VisibleDate='<%# Eval("EndDate") %>' SelectedDate='<%# Bind("EndDate") %>' />
             </div></div>

                 <div class="form-group row">
                &nbsp;&nbsp;
                 AuditStatus:
                 <div class="col-sm-5"><asp:DropDownList CssClass="form-control" class="btn btn-secondary dropdown-toggle" ID="AuditStatusTextBox" runat="server" Text='<%# Bind("AuditStatus") %>' >
                      <asp:ListItem>Initial</asp:ListItem>
                    <asp:ListItem>Confirmatory</asp:ListItem>
                    <asp:ListItem>Completed</asp:ListItem>
                                       </asp:DropDownList>
                 </div></div>

                 <div class="form-group row">
                &nbsp;&nbsp;
                 AuditorName:
                <div class="col-sm-5"> <asp:TextBox CssClass="form-control" ID="AuditorNameTextBox" runat="server" Text='<%# Bind("AuditorName") %>' />
                 </div></div>

                 <div class="form-group row">
                &nbsp;&nbsp;
                 State:
                <div class="col-sm-5"> <asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' >
                      <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
        <asp:ListItem>Andhra Pradesh</asp:ListItem>
        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
        <asp:ListItem>Assam</asp:ListItem>
        <asp:ListItem>Bihar</asp:ListItem>
        <asp:ListItem>Chandigarh</asp:ListItem>
        <asp:ListItem>Chattisgarh</asp:ListItem>
        <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
        <asp:ListItem>Daman and Diu</asp:ListItem>
        <asp:ListItem>Delhi</asp:ListItem>
        <asp:ListItem>Goa</asp:ListItem>
        <asp:ListItem>Gujarat</asp:ListItem>
        <asp:ListItem>Haryana</asp:ListItem>
        <asp:ListItem>Himachal Pradesh</asp:ListItem>
        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
        <asp:ListItem>Jharkhand</asp:ListItem>
        <asp:ListItem>Karnataka</asp:ListItem>
        <asp:ListItem>Kerala</asp:ListItem>
        <asp:ListItem>Lakshadweep</asp:ListItem>
        <asp:ListItem>Madhya Pradesh</asp:ListItem>
        <asp:ListItem>Maharashtra</asp:ListItem>
        <asp:ListItem>Manipur</asp:ListItem>
        <asp:ListItem>Meghalaya</asp:ListItem>
        <asp:ListItem>Mizoram</asp:ListItem>
        <asp:ListItem>Nagaland</asp:ListItem>
        <asp:ListItem>Orissa</asp:ListItem>
        <asp:ListItem>Pondicherry</asp:ListItem>
        <asp:ListItem>Punjab</asp:ListItem>
        <asp:ListItem>Rajasthan</asp:ListItem>
        <asp:ListItem>Sikkim</asp:ListItem>
        <asp:ListItem>Tamil Nadu</asp:ListItem>
        <asp:ListItem>Telangana</asp:ListItem>
        <asp:ListItem>Tripura</asp:ListItem>
        <asp:ListItem>Uttarakhand</asp:ListItem>
        <asp:ListItem>Uttaranchal</asp:ListItem>
        <asp:ListItem>Uttar Pradesh</asp:ListItem>
        <asp:ListItem>West Bengal</asp:ListItem>
                 </asp:DropDownList>
                </div></div>
                 <br />
                 <div>
                 <asp:LinkButton ID="UpdateButton" runat="server" class="btn btn-dark" CausesValidation="True" CommandName="Update" Text="Update" />
                 &nbsp;<asp:LinkButton ID="UpdateCancelButton" class="btn btn-dark" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </div> </EditItemTemplate>
                        
         </asp:FormView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ReportGenerator %>" SelectCommand="SELECT [Department_Name], [Category_of_organization], [Sector_of_organization], [Type_of_Audit], [Reason_for_Audit], [URL], [TestedAppVersion], [SPOC_Details], [StartDate], [EndDate], [AuditStatus], [AuditorName], [State] FROM [Project] WHERE ([Application_Name] = @Application_Name)" UpdateCommand="update Project set 
            Department_Name=@Department_Name, Category_of_organization=@Category_of_organization, Sector_of_organization=@Sector_of_organization, Type_of_Audit=@Type_of_Audit, Reason_for_Audit=@Reason_for_Audit, URL=@URL, TestedAppVersion=@TestedAppVersion, SPOC_Details=@SPOC_Details, StartDate=@StartDate, EndDate=@EndDate, AuditStatus=@AuditStatus, AuditorName=@AuditorName, State=@State where Application_Name=@Application_Name ">
             <SelectParameters>
                 <asp:ControlParameter ControlID="Name" Name="Application_Name" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:ControlParameter ControlID="Name" Name="Application_Name" PropertyName="SelectedValue" Type="String" />
             <asp:Parameter Name="Department_Name" Type="string" />
                    <asp:Parameter Name="Category_of_organization" Type="string" />
                    <asp:Parameter Name="Sector_of_organization" Type="string" />
                    <asp:Parameter Name="Type_of_Audit" Type="string" />
                 <asp:Parameter Name="Reason_for_Audit" Type="string" />
                 <asp:Parameter Name="URL" Type="string" />
                 <asp:Parameter Name="TestedAppVersion" Type="string" />
                 <asp:Parameter Name="SPOC_Details" Type="string" />
                 <asp:Parameter Name="StartDate" Type="DateTime" />
                 <asp:Parameter Name="EndDate" Type="DateTime" />
                 <asp:Parameter Name="Audit_Status" Type="string" />
                 <asp:Parameter Name="Auditor_Name" Type="string" />
                 <asp:Parameter Name="State" Type="string" />
             </UpdateParameters>
         </asp:SqlDataSource>
       <br />   
             
    </form>
</body>
</html>

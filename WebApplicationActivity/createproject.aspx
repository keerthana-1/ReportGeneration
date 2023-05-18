<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createproject.aspx.cs" Inherits="WebApplicationActivity.createproject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 1148px;
        }
        .auto-style2 {
            height: 1125px;
        }
        .auto-style3 {}
        .auto-style4 {}
        .auto-style5 {}
        .auto-style6 {}
        .auto-style7 {}
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="auto-style1">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style3" Height="1345px">
               
                 <div class="form-group row">
                <asp:Label ID="Label1" runat="server" class="col-sm-2 col-form-label" Text="Application Name :" Height="25px" Width="250px"></asp:Label>
                <div class="col-sm-5"> <asp:TextBox CssClass="form-control" ID="Name" runat="server"></asp:TextBox>
                </div></div>

                 <div class="form-group row">
                <asp:Label ID="Label2" runat="server" class="col-sm-2 col-form-label" Text="Department/Organization Name  :" Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5"><asp:TextBox CssClass="form-control" ID="Dept" runat="server"></asp:TextBox>
                </div></div>

               <div class="form-group row">
                <asp:Label ID="Label3" runat="server" class="col-sm-2 col-form-label" Text="Category of Organization : " Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5"><asp:DropDownList ID="Category" class="btn btn-secondary dropdown-toggle" runat="server">
                    
                    <asp:ListItem>State Government Department</asp:ListItem>
                    <asp:ListItem>Central Ministry/ Department</asp:ListItem>
                    <asp:ListItem>Organization under Government Department</asp:ListItem>
                    <asp:ListItem>Public sector organizations</asp:ListItem>
                    <asp:ListItem>Private Sector</asp:ListItem>
                   
                </asp:DropDownList>
                </div></div>

                <div class="form-group row">
                <asp:Label ID="Label4" runat="server" class="col-sm-2 col-form-label" Text="Sector of Organization : " Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5"><asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="Sector" runat="server">
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
                <asp:Label ID="Label5" class="col-sm-2 col-form-label" runat="server" Height="25px" Text="Type of Audit : " Width="250px"></asp:Label>
                 <div class="col-sm-5"><asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="AuditType" runat="server">
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
                <asp:Label ID="Label6" class="col-sm-2 col-form-label" runat="server" Text="Reason for conducting Audit : " Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5"><asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="Reason" runat="server">
                   
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
                <asp:Label ID="Label7" class="col-sm-2 col-form-label" runat="server" Text="State :" Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5">
                <asp:DropDownList class="btn btn-secondary dropdown-toggle" ID="State" runat="server" >
              
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
                
                <div class="form-group row">
                <asp:Label ID="Label8" class="col-sm-2 col-form-label" runat="server" Text="URL / Package Name : " Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5"><asp:TextBox CssClass="form-control" ID="URL" runat="server"></asp:TextBox>
               </div></div>
                
                <div class="form-group row">
                <asp:Label ID="Label9" class="col-sm-2 col-form-label" runat="server" Text="Tested App version :" Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5">
                <asp:TextBox ID="AppVersion" CssClass="form-control" runat="server"></asp:TextBox>
                </div></div>
                
                <div class="form-group row">
                <asp:Label ID="Label10" class="col-sm-2 col-form-label" runat="server" Text="Client Company Details : " Height="25px" Width="250px"></asp:Label>
                <div class="col-sm-5">
                <textarea id="SPOC" cols="20" name="S1" rows="2" class="form-control rounded-0" runat="server"></textarea><br />
                </div></div>

                <div class="form-group row">
                <asp:Label ID="Label11" class="col-sm-2 col-form-label" runat="server" Text="Assessment Start Date : " Height="25px" Width="250px"></asp:Label>
                <div class="col-sm-5"><asp:TextBox  CssClass="form-control" ID="StartDate" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/calendar icon.png" CssClass="auto-style4" Height="25px" Width="25px" OnClick="ImageButton2_Click"/>
                <br />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" CssClass="auto-style6" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="227px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                </div></div>

                <div class="form-group row">
                <asp:Label class="col-sm-2 col-form-label" ID="Label12" runat="server" Text="Assessment End Date : " Height="25px" Width="250px"></asp:Label>
               <div class="col-sm-5">
                <asp:TextBox ID="EndDate" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/calendar icon.png" CssClass="auto-style5" Height="25px" Width="25px" OnClick="ImageButton4_Click" />
                <br />
                <asp:Calendar ID="Calendar3" runat="server" OnSelectionChanged="Calendar3_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" CssClass="auto-style7" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="209px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                </div></div>

                <div class="form-group row">
                <asp:Label ID="Label13" class="col-sm-2 col-form-label" runat="server" Text="Audit Status : " Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5"><asp:DropDownList  class="btn btn-secondary dropdown-toggle" ID="AuditStatus" runat="server">
                    
                    <asp:ListItem>Initial</asp:ListItem>
                    <asp:ListItem>Confirmatory</asp:ListItem>
                    <asp:ListItem>Completed</asp:ListItem>
                </asp:DropDownList>
               </div></div>

                <div class="form-group row">
                <asp:Label ID="Label14" class="col-sm-2 col-form-label" runat="server" Text="Auditor Name :" Height="25px" Width="250px"></asp:Label>
                 <div class="col-sm-5"><asp:TextBox ID="Auditor" CssClass="form-control" runat="server"></asp:TextBox>
                </div></div>
                <div >
                <asp:Button ID="Submit" class="btn btn-dark" runat="server" Text="Submit" OnClick="Submit_Click" />
                    </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>

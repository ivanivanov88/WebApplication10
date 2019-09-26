<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication10.SearchPageWithDynamicSQL" %>
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<% foreach (var segment in Request.GetFriendlyUrlSegments()) { %>
    <li><%: segment %></li>
<% } %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nutrient Search</title>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="jquery-ui.js"></script>
    <link href="jquery-ui.css" rel="stylesheet" />
  
    <style type="text/css">
        .image
        {
            float: left;
            max-height: 50px;
            max-width: 50px;
            margin-right: 10px;
        }
        .name
        {
            margin: 0;
            padding: 0;
        }
        .username
        {
            display: block;
            font-weight: bold;
            margin-bottom: 1em;
        }
        .ui-autocomplete
        {
            max-height:320px;
            overflow: auto;
        }
        .auto-style1 {
            margin-right: -15px;
            margin-left: -15px;
            height: 451px;
            margin-top: 54px;
        }
        .auto-style2 {
            margin-top: 8px;
        }
        .auto-style3 {
            left: -62px;
            top: -25px;
        
        }
        .gridViewPager td
{
	padding-left: 4px;
	padding-right: 4px;
	padding-top: 1px;
	padding-bottom: 2px;
}
             .cssPager td
        {
              padding-left: 4px;     
              padding-right: 4px;    
          }
    </style> 
        <script type ="text/javascript">
            $(document).ready(function () {
                $('#inputLong_Desc').autocomplete({
                    source: 'FoodHandler.ashx'
                });
            });
    </script>
    <script type="text/javascript">
        document.ready(function () {

        });
    </script>
    	    <script type ="text/javascript">
                function showhide() {
                    var div = document.getElementById("hiddenlist");
                    if (div.style.display !== "none") {
                        div.style.display = "none";
                    }
                    else {
                        div.style.display = "block";
                    }
                }
    </script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="cookie.js"></script>
    <link href="cookie_note.css" rel="stylesheet" />   
   
    <link rel="shortcut icon" href="~/walnut_small.ico" type ="image/x-icon" />
</head>
<body style="padding-top: 10px">
   <%-- <div class="alert alert-dismissible text-center cookiealert" role="alert">
  <div class="cookiealert-container">
    <b>Hello and welcome to our website.We know cookies are unhealthy,but</b> &#x1F36A; We use cookies to ensure you get the best experience on our website. <a href="http://cookiesandyou.com/" target="_blank">Learn more</a>

    <button type="button" class="btn btn-primary btn-sm acceptcookies" aria-label="Close">
        I agree
    </button>
  </div>
</div>--%>
   <div style ="height: 75px; position:fixed; bottom:150px;z-index:20" class="sticky top" id="cookie_directive_container">
      <ul>
        <li id="cookie_note">To provide the best user experience, this website stores <a href="http://www.allaboutcookies.org/cookies/" target="_blank">  <i class="fa fa-external-link" aria-hidden="true"></i>cookies</a> on your browser.By clicking "I understand and accept" or by continuing to use the site,<br /> you agree to this use of cookies and data.</li>
        <li id="cookie_accept"><a href="javascript:void(0);">&nbsp;I understand and accept&nbsp;</a></li>
        <li id="cookies_used"><a href="Privacy_Policy.aspx"> <i class="fa fa-external-link" aria-hidden="true"></i>Review cookies used on this website.</a></li>
        <li id="cookies_used"><a href="Privacy_Policy.aspx"> <i class="fa fa-external-link" aria-hidden="true"></i>Privacy Policy.</a></li>
   </ul>
</div>
 
<nav class="navbar navbar-default" style="z-index:1;width:auto;">
  <div class="container-fluid"style="width:auto">
    <div class="navbar-header">
      <a class="navbar-brand" href="">
        <img alt="Brand"style="width:150px;height:auto;position:relative;bottom:30px;"  src="Images/LogojpgSMALL.jpg">
      </a>
 <ul class="list" style="list-style: none; position:relative; left:150px; bottom:20px;">
  <li  style="display:inline;position:relative;right:40px;top:39px;" ><a href="Privacy_Policy.aspx">Privacy Policy</a></li>
  <li style="display:inline;position:relative;left:120px;top:20px;" ><a href="Termsandconditions.aspx">Terms of use</a></li>
  <li style="display:inline;position:relative;left:280px;" ><a href="Aboutus.aspx">About us</a></li>
</ul>
   </div>
  </div>
</nav>
<section style="position:relative;bottom:100px;">
   <div class="container-fluid">
      <div class="auto-style1">
         <center class="auto-style2">
           <img src="Images/LogojpgEdit1.jpg" />
         </center>
      </div>            
  </div>
</section>
    <div class="col-xs-8 col-xs-offset-2" style="position:relative;bottom:100px;">
        <form id="form1" runat="server" class="form-horizontal">
            <div class="panel panel-primary" style="width:120%;border-color:black;">
                <div class="panel-heading" style="background:#f0f0f5;color:black;border-color:black;">        
                    <h3>Nutrients Search</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label for="inputLong_Desc" class="control-label col-xs-2">
                            Enter Food Name
                        </label>                  
                        <div class="col-xs-7">
                            <input type="text" runat="server" class="form-control"
                                id="inputLong_Desc" placeholder="Search for food" />
                        </div>
                            <asp:Button ID="btnSearch" runat="server" Text="Search"
                                CssClass="btn btn-primary" OnClick="BtnSearch_Click" style="margin-left: 0" /> 
                          <button type="button" id="Button2" class="btn btn-secondary mb-2"style="position:relative;" onclick="showhide()">Filter</button>  
                          <asp:Button ID ="btnClear" runat="server" Text="Clear Filter" CssClass="btn btn-secondary mb-2" OnClick="ClearFilter" />
            <div class="container" id ="hiddenlist" style="display:none;border:1px solid #0094ff;border-radius:25px;position:absolute;margin-left:70%; width:300px;height:160px;background:white"> 
                   <label for="ListBox1">Order by ammount of:</label>
                   <asp:ListBox ID="ListBox1" runat="server" CssClass="checkbox-inline" SelectionMode="Single" style="position:absolute;top:25px;right:20px" Rows="7" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            </div>
                               <div class="container" style="position:relative;top: 20px;width:500px; margin-left:10%" id="checkboxy">      
                                       <asp:HiddenField ID="checkboxhidden" runat="server"/>
                                   <div class ="container" style="width:500px;position:relative;margin-right:80%;">
                                   <asp:CheckBox id="checkbox2" runat="server" AutoPostBack="True" Text=" Search only basic foods and ingredients." TextAlign="Right" OnCheckedChanged="Check_Clicked"/>
                                   </div>
                           </div>
                       </div>               
                    <div class="form-group pull-right">
                        <div class="auto-style3">                
                       </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-primary" style="width:120%;border-color:black;">
                <div class="panel-heading" style="background:#f0f0f5;color:black;border-color:black;">
                    <h3>Search Results</h3>
                </div>
                <div class="panel-body">
                    <div class="col-xs-10"style=" border: 1px solid #A1DCF2;-webkit-border-radius: 8px;-moz-border-radius: 8px;border-radius: 8px;overflow: hidden;">
                        <asp:GridView CssClass="table table-bordered"
                            ID="gvSearchResults"
                             AllowPaging="true" 
                             AllowSorting="true"
                              PageSize = "20" 
                               onprerender="GridView1_PreRender"
                               AutoGenerateColumns ="False"
                              OnPageIndexChanging="SubmitAppraisalGrid_PageIndexChanging"
                              EmptyDataText="No data available." 
                              runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                               <asp:TemplateField   HeaderText="Name">
                                <ItemTemplate>
                                   <asp:LinkButton ID="LinkButton1" runat="server" OnCommand ="LinkButton1_Click"  Text='<%#Eval("Long_Desc") %>' CommandArgument ='<%#Eval("NDB_No") %>'  >LinkButton</asp:LinkButton>
                               </ItemTemplate>
                             </asp:TemplateField>   
                                <asp:TemplateField HeaderText = "Value of nutrient (in 100g)">
                                   <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server"   Text='<%#Eval("column3") %>' >LinkButton</asp:Label>
                                   </ItemTemplate>
                              </asp:TemplateField>  
                                 <asp:TemplateField HeaderText = "Unit">
                                   <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server"   Text='<%#Eval("Units")   %>' >LinkButton</asp:Label>
                                   </ItemTemplate>
                              </asp:TemplateField>  
                             </Columns>    
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" Font-Bold="True" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#5D7B9D" Width="10px" ForeColor="White" HorizontalAlign="Center" CssClass="cssPager" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                             </asp:GridView>
                             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="480px" Height="163px">           
                             <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center"/>
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            
                         </asp:GridView>
                        <asp:Label ID="LabelPage" runat="server"></asp:Label>
   <%--                     <asp:Repeater ID="repeaterPaging" runat="server">
    <ItemTemplate>
        <asp:LinkButton ID="pagingLinkButton" runat="server" 
            Text='<%#Eval("Text") %>' 
            CommandArgument='<%# Eval("Value") %>'
            Enabled='<%# Eval("Enabled") %>' 
            OnClick="linkButton_Click">
        </asp:LinkButton>
    </ItemTemplate>
</asp:Repeater>--%>
                    </div>
                </div>
            </div>
        </form>
        <hr style="color:aquamarine;height=2px"/>
    </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/js-cookie/2.2.0/js.cookie.min.js"></script>
</body>
</html>

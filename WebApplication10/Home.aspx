<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication10.Home" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nutrient Search</title>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="jquery-ui.js"></script>
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <script src="http://malsup.github.io/jquery.blockUI.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnSearch').click(function () {
                $('.blockMe').block({
                    message: 'Please wait...<br /><img src="Images/loadingBar.gif" />',
                    css: { padding: '10px' }
                });
            });
        });
</script>
    <link href="jquery-ui.css" rel="stylesheet" />
    <link href="appleRotation.css" rel="stylesheet" />
    <style type="text/css">
   .ImageButton { position:relative;font: 41px arial, sans-serif; height: 50px; width: 150px; overflow:hidden; border-radius: 25px; border: 1px solid #000000;background-image:url('FoodButtonSmaller2Adjusted.jpg'); background-size: 1555% 100%;
    -webkit-animation-name: MOVE-BG4; color: rgba(0, 0, 0, 0.6);
	-webkit-animation-duration: 260s;
	-webkit-animation-timing-function: linear;
	-webkit-animation-iteration-count: infinite;   
        }
          select > option:hover {
    background-color:  #a9adaa;
  }
 .ImageButton:hover{-webkit-animation-name: MOVE-BG2;}
 .ImageButton:active{-webkit-animation-name: MOVE-BG3;}
 .NutreintBtn {
            position: relative;
            font: 25px arial, sans-serif;
            white-space: normal;
            line-height:20px;
            height: 50px;
            width: 150px;
            overflow: hidden;
            border-radius: 25px;
            border: 1px solid #000000;
            background-image: url('Nutrient Button2Adjusted.jpg');
            background-size: 600% 100%;
            -webkit-animation-name: MOVE-BG;
            color: rgba(0, 0, 0, 0.6);
            -webkit-animation-duration: 100s;
            -webkit-animation-timing-function: linear;
            -webkit-animation-iteration-count: infinite;
        }
 .NutreintBtn:hover{-webkit-animation-name: MOVE-BG2;}
 .NutreintBtn:active{-webkit-animation-name: MOVE-BG3;}
  .CategoryBtn {
            position: relative;
            font: 25px arial, sans-serif;
            height: 50px;
            white-space: normal;
            line-height:20px;
            width: 150px;
            overflow: hidden;
            border-radius: 25px;
            border: 1px solid #000000;
            background-image: url('FoodCategoryButtonAdjusted.jpg');
            background-size: 600% 100%;
            -webkit-animation-name: MOVE-BG;
            color: rgba(0, 0, 0, 0.6);
            -webkit-animation-duration: 100s;
            -webkit-animation-timing-function: linear;
            -webkit-animation-iteration-count: infinite;
        }
 .CategoryBtn:hover{-webkit-animation-name: MOVE-BG2;}
 .CategoryBtn:active{-webkit-animation-name: MOVE-BG3;}
        @-webkit-keyframes MOVE-BG {
	from {
		background-position: 0% 0%
	}
	to { 
		background-position: 187% 0%
	}
}
              @-webkit-keyframes MOVE-BG4 {
	from {
		background-position: 0% 0%
	}
	to { 
		background-position: 287% 0%
	}
}
                @-webkit-keyframes MOVE-BG2 {
	from {
		background-position: -10% 0%
	}
	to { 
		background-position: -187% 0%
	}
}
     @-webkit-keyframes MOVE-BG3 {
	from {
		background-size: -10% -100%;
        background-position: -1110% 0%
	}
	to { 
		background-size: 118700% 1100%;
        background-position: -11180% 0%
	}
}
        .submit {
        height: 36px;
        width: 36px;
        border: 1px solid #ffffff;
        border-radius: 5px;
        position:relative;
        overflow: hidden;
        left:4px;
        background-size: 150% 150%;
        background: url('CancleButton.png') no-repeat;

        vertical-align:middle
    }
        .submit:hover{
             background: url('CancleButton.png') no-repeat #ff5b08;
        }
     .TextBoxCss {
        font: 20px arial, sans-serif;
         border:0;
         width:100px;
         text-align: center;
         position:relative;   
         left:3px;
         border-radius:4px;
         bottom:13px;
         overflow: hidden;
         background:#d7d7d7;
         vertical-align:middle
     }
     .wrapper {
         overflow: hidden;
         height:37px;
         width:150px;
    border:1px solid #808080;
    border-radius:10px;
    display:inline-block;
    z-index:11;
}
     .sprite1 {
    width: 256px;
    height: 256px;
    background-image: url("spritesheet.png");
    animation: playX 0.5s steps(3) infinite, playY 1.5s steps(3) infinite;
}

@keyframes playX {
    from {
        background-position-x: 0px;
    }

    to {
        background-position-x: -798px;
    }
}

@keyframes playY {
    from {
        background-position-y: 0px;
    }

    to {
        background-position-y: -798px;
    }
}

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
                function showhide2() {
                    var div = document.getElementById("hiddenlist2");
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
    <div id="sprite" class="sprite1"></div>
   <div style ="height: 75px; position:fixed; bottom:150px;z-index:20" class="sticky top" id="cookie_directive_container">
      <ul>
        <li id="cookie_note">To provide the best user experience, this website stores <a href="http://www.allaboutcookies.org/cookies/" target="_blank">  <i class="fa fa-external-link" aria-hidden="true"></i>cookies</a> on your browser.By clicking "I understand and accept" or by continuing to use the site,<br /> you agree to this use of cookies and data.</li>
        <li id="cookie_accept"><a href="javascript:void(0);">&nbsp;I understand and accept&nbsp;</a></li>
        <li id="cookies_used"><a href="Privacy_Policy.aspx"> <i class="fa fa-external-link" aria-hidden="true"></i>Review cookies used on this website.</a></li>
        <li id="cookies_used"><a href="Privacy_Policy.aspx"> <i class="fa fa-external-link" aria-hidden="true"></i>Privacy Policy.</a></li>
   </ul>
</div>
<div id="wrapper" style="margin-left:auto;margin-right:20%;width:1580px;">
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
                    <div class="form-group" style="position:relative;right:45px;">
                        <label for="inputLong_Desc" class="control-label col-xs-2">
                            Enter Food Name
                        </label>                  
                        <div class="col-xs-7" style="width:500px">
                            <input type="text" runat="server" class="form-control"
                                id="inputLong_Desc" placeholder="Search for food" />
                        </div>
                        <div >
                            <asp:Button ID="btnSearch" runat="server" Text="Search" class="ImageButton" ClientIDMode="Static"
                                OnClick="BtnSearch_Click" style="margin-left: 0" /> 
                            </div>
                       
                        <div class="container" id ="hiddenlist2" style="display:none;border:1px solid #0094ff;border-radius:25px;background:white; position:absolute;left:1048px;width:300px;height:160px;top:49px; background:white">
                        <label style="position:relative;top:2px;" for="ListBox2">Order by category:</label>
                        <asp:ListBox ID="Listbox2"  runat="server" CssClass="checkbox-inline" AutoPostBack="True" style="position:absolute;top:25px;right:20px" SelectionMode="Single" Rows="7" OnSelectedIndexChanged="Dropdown_SelectedIndexChanged" >
                        </asp:ListBox>
                            
                       </div>
                        <div  style="position:absolute;left:880px;width:160px;top:2px;"  >
                          <button type="button" class="NutreintBtn" id="Button2" style="position:relative;" onclick="showhide()">Order by Nutrient:</button>  
                           <div runat="server" class ="wrapper" id="OrderDiv">
                           <asp:TextBox class="Textbox1" ID="TextBoxList" runat="server"  ReadOnly="true" CssClass="TextBoxCss" />
                           <asp:Button ID ="btnClear" runat="server"  class="submit" OnClick="ClearFilter" />
                        </div>
                        </div>
                         <div style="position:absolute;left:1050px;top:2px" >
                          <button type="button" class="CategoryBtn" id="button3" style="position:relative;" onclick="showhide2()">Filter by category:</button>  
                             <div  runat="server" id="CategoryDiv"  class ="wrapper">
                             <asp:TextBox class="Textbox2" ID="TextBox2" runat="server"  ReadOnly="true" CssClass="TextBoxCss" />
                          <asp:Button ID ="btnClear2" runat="server" CssClass="submit" OnClick="ClearFilter2" />
                        </div>
                      </div>
                   <div class="container" id ="hiddenlist" style="display:none;border:1px solid #0094ff;border-radius:25px;position:absolute;margin-left:61%; width:300px;height:160px;background:white"> 
                   <label for="ListBox1">Order by ammount of:</label>
                   <asp:ListBox ID="ListBox1" runat="server" CssClass="checkbox-inline" AutoPostBack="True" SelectionMode="Single" style="position:absolute;top:25px;right:20px" Rows="7" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">             
                   </asp:ListBox>
                  </div>
                   <div class="container" style="position:relative;top: 20px;width:500px; margin-left:10%" id="checkboxy">      
                                   <asp:HiddenField ID="checkboxhidden" runat="server"/>
                                   <div class ="container" style="width:500px;position:relative;margin-right:80%;">
                                   <asp:CheckBox id="checkbox2" runat="server" AutoPostBack="True" Text=" Search only basic foods and ingredients." TextAlign="Right" OnCheckedChanged="Check_Clicked" />
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
                                   <asp:HyperLink ID="LinkButton1" runat="server"  Text='<%#Eval("Long_Desc") %>' NavigateUrl='<%# GetRouteUrl("ProductByNameRoute",new System.Web.Routing.RouteValueDictionary { { "NDB_No", Eval("NDB_No") }, { "Slug_Name", Eval("Slug_Name") } })%>' >LinkButton</asp:HyperLink>
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
                    </div>
                </div>
            </div>
        </form>
        <hr style="color:aquamarine;height=2px"/>
    </div>
  </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/js-cookie/2.2.0/js.cookie.min.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="WebApplication10.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About us.</title>
    <meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <style>
        .btn-separator:after {
    content: ' ';
    display: block;
    float: left;
    background: #ADADAD;
    margin: 0 10px;
    height: 34px;
    width: 1px;
      
}
    </style>
    <style>
         .divstafter {
                position:relative;
              }
         .pix2 {
             position:absolute;
             right:0;
         }
    </style>
    <style >
       fieldset{
          background: white;
          background-repeat:no-repeat;
          background-position:center;
          background-size:cover;
          position:relative;
}
       p#innerPara{padding:20px ;}
       legend{width:200px;padding:10px 20px;}
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 83.333333%;
            flex: 0 0 83.333333%;
            max-width: 83.333333%;
            left: -63px;
            top: 8px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
<body>
           <div id="wrapper" style="margin-left:auto;margin-right:20%;width:1580px;">
        <div class ="container  justify-content-center " style =" position: relative; left:370px">
            <div class="row">
         <a href="Home.aspx" class="btn btn-primary btn-sm active pull-right " role="button" aria-pressed="true">Got back to main page.</a>
                   <span class="btn-separator"></span>
          <a href="Termsandconditions.aspx" class="btn btn-primary btn-sm active pull-right " role="button" aria-disabled="true">Terms and conditions.</a>
                  </div>
              </div>
        <div class ="container justify-content-center" style =" position: relative; left:370px">
        <img src="Images/LogojpgSMALL.jpg" class ="float-left left"/>
       </div>
  <div class="container divstafter justify-content-center" style=" top: 140px">
   <div class="auto-style1">
     <fieldset class="border" >
       <legend class ='text-center'>About Us</legend>


         <p id="innerPara">
            Created in 2019, consumestats.com is created with the idea to search easily for different food products,fruits and vegetables.
            The information on our website comes from the USDA's National Nutrient Database for Standard Reference. Without their database of food analysis, this would have not been possible.
            We are constantly updating our database and we are striving to implement different APIs so that you can get more relevant results and find what you really search for.
            Information is a commodity and sharing it with others is fundamental for our progress as species.
            Write to us at ivanivanov88yho@yahoo.com
       </p>
        </fieldset>
        </div>
         </div>   

    <footer class="page-footer font-small unique-color-dark pt-4" style="top:160px;position:relative;">

  <!-- Footer Elements -->
  <div class="container" style ="top:auto">

    <!-- Call to action -->
    <ul class="list-unstyled list-inline text-center py-2">
      <li class="list-inline-item">
        <h5 class="mb-1">Thank you for using our website!</h5>
          </li>
        </ul>
    <!-- Call to action -->

  </div>
  <!-- Footer Elements -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> consumestats.com</a>
  </div>
  <!-- Copyright -->

</footer>
               </div>
</body>
</html>

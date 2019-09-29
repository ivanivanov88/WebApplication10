<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WebApplication10.ProductDetails" Title="" %>
<!DOCTYPE html>
<%--<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<% foreach (var segment in Request.GetFriendlyUrlSegments()) { %>
    <li><%: segment %></li>
<% } %>--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <%-- <title>Product Details for :<asp:Label ID ="Label155" runat ="server"></asp:Label> </title>--%>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/Wruczek/Bootstrap-Cookie-Alert@gh-pages/cookiealert.css"/>
<link rel="shortcut icon" href="~/walnut_small.ico" type ="image/x-icon" />
<style>
    h1{
    text-transform: lowercase;
}
    h1{
        text-transform:capitalize;
    }
</style>

</head>
<body style="height: 768px"> 
    
   <div class="row justify-content-center">
          
    <div class="col-auto">     
    <div class="container">        
  <h1 class="text-white align-content-center bg-primary">Nutritional value for <asp:Label ID ="Label152" runat ="server"></asp:Label>  </h1>

  <hr />
  <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Ammount calculated for in (g) :</label>
      <div class="mx-sm-3">
      <a><input type="text" class="form-control" id="ammounting" aria-describedby="ammountingg" placeholder="Enter ammount in grams." style="width:200px;position:relative;left:230px;bottom:40px"/></a>
          </div>
    <small id="emailHelp" class="form-text text-muted" style="position:relative;bottom:40px;">Every value of the nutrients will change depending on the ammount of grams you input (default is 100g).</small>
    <button type="button" class="btn btn-primary mb-2" onclick="multiplyBy()" value="Multiply"style="position:relative;bottom:103px;left:450px;">Submit</button>
 <div class ="container" style="position:relative;width:300px; bottom:140px;left:300px;border-radius:25px; border:1px solid #0094ff">
     <h4 style="position:relative;left:10px;">Show info for :</h4>
      <div class="custom-control custom-radio"style="position:relative;left:20px;">
         <label for="input3" style="position:relative;right:20px;" >General Information :</label>
         <input name="collapseGroup" type="radio" class="form-check-input" data-toggle="collapse" data-target=".collapseOne:not(.show)"checked/> Yes

         <input name="collapseGroup" type="radio" data-toggle="collapse" data-target=".collapseOne.show" /> No
</div>
      
   <div class="custom-control custom-radio form-row" style="position:relative;left:120px;">
          <label for="input1" style="position:relative;right:112px;" > Sugars :</label>
         <input name="collapseGroup1" id="input1" type="radio" class="form-check-input" data-toggle="collapse" data-target=".collapseOne1:not(.show)"checked/> Yes

        <input name="collapseGroup1" type="radio" data-toggle="collapse" data-target=".collapseOne1.show" /> No
</div>
      <div class="custom-control custom-radio"style="position:relative;left:22px;">
          <label for="input2" style="position:relative;right:21px;" >Protein amino acids :</label>
         <input name="collapseGroup2" type="radio" class="form-check-input" data-toggle="collapse" data-target=".collapseOne2:not(.show)"checked/> Yes

        <input name="collapseGroup2" type="radio" data-toggle="collapse" data-target=".collapseOne2.show" /> No
</div>
         <div class="custom-control custom-radio" style="position:relative;left:100px;">
          <label for="input4" style="position:relative;right:95px;" >Minerals :</label>
         <input name="collapseGroup3" type="radio" class="form-check-input" data-toggle="collapse" data-target=".collapseOne3:not(.show)"checked/> Yes

        <input name="collapseGroup3" type="radio" data-toggle="collapse" data-target=".collapseOne3.show" /> No
</div> 
         <div class="custom-control custom-radio" style="position:relative;left:100px;">
          <label for="input5" style="position:relative;right:95px;" >Vitamins :</label>
         <input name="collapseGroup4" type="radio" class="form-check-input" data-toggle="collapse" data-target=".collapseOne4:not(.show)"checked/> Yes

        <input name="collapseGroup4" type="radio" data-toggle="collapse" data-target=".collapseOne4.show" /> No
</div>
    <div class="custom-control custom-radio" style="position:relative;left:135px;">
         <label for="input6" style="position:relative;right:130px;" >Fats :</label>
         <input name="collapseGroup5" type="radio" class="form-check-input" data-toggle="collapse" data-target=".collapseOne5:not(.show)"checked/> Yes

        <input name="collapseGroup5" type="radio" data-toggle="collapse" data-target=".collapseOne5.show" /> No
  </div>
       <div class="custom-control custom-radio" style="position:relative;left:115px;">
          <label for="input7" style="position:relative;right:110px;" >Others :</label>
         <input name="collapseGroup6" type="radio" class="form-check-input" data-toggle="collapse" data-target=".collapseOne6:not(.show)"checked/> Yes

        <input name="collapseGroup6" type="radio" data-toggle="collapse" data-target=".collapseOne6.show" /> No
     </div>
    
  </div>
  </div>
        <hr style="position:relative; bottom:140px" />
  </form>
  
  <h3 class="text-primary" style="position:relative;bottom:140px">General Information</h3> 
  <div class="panel-body" style="position:relative;bottom:140px;">                        

   <table class ="table table-striped table-hover collapseOne panel-collapse collapse show" data-toggle="collapse" data-target="#radio-button-1">
    <thead>
        <tr>
            <th class="auto-style1"scope="col">Indicator</th>
            <th class="auto-style11"scope="col">Value(100g)</th> 
            <th scope="col">Value calculated for(<span id = "ammounting1"></span> g)</th>
             <th scope="col">Recommended Daily Intake</th> 
            
        </tr>
    </thead>
    <tbody>      
         <tr class="toggler">                
            <th scope="row" class="auto-style1">Name</th>
            <td class="auto-style11"><asp:Label ID ="Label1" runat ="server"></asp:Label></td> 
            <td>~</td>
            <td>~</td>
        </tr>
        <tr class="toggler">
            <th scope="row" class="auto-style1">Water</th>
            <td class="auto-style11"><asp:Label ID ="Label2" runat ="server"></asp:Label> (g)</td>
             <td class="auto-style11"><span id = "result"></span> (g)</td>   
            <td class="auto-style3">2.7 L</td>
        </tr>
        <tr class="toggler">
            <th scope="row" class="auto-style1">Energy(Kcal)</th>
            <td class="auto-style11"><asp:Label ID ="Label3" runat ="server"></asp:Label> (kcal)</td>
           <td class="auto-style11"><span id = "result1"></span> (kcal)</td>  
            <td class="auto-style3">2000 Kcal</td>
        </tr>
        <tr class="toggler">
            <th scope="row" class="auto-style1">Protein</th>
            <td class="auto-style11"><asp:Label ID ="Label00" runat ="server"></asp:Label> (g)</td> 
          <td class="auto-style11"><span id = "result2"></span> (g)</td>  
            <td class="auto-style3">45-56 g</td>
        </tr>
        <tr class="toggler">
            <th scope="row" class="auto-style1">Total Lipids</th>
            <td class="auto-style11"><asp:Label ID ="Label4" runat ="server"></asp:Label> (g)</td>
            <td class="auto-style11"><span id = "result3"></span> (g)</td>  
            <td class="auto-style3">44-77 g</td>
      
        </tr>
        <tr class="toggler">
            <th scope="row" class="auto-style1">Ash</th>
            <td class="auto-style11"><asp:Label ID ="Label5" runat ="server"></asp:Label> (g)</td>
            <td class="auto-style11"><span id = "result4"></span> (g)</td>  
            <td class="auto-style3">~</td>
        </tr>
             <tr class="toggler">
            <th scope="row" class="auto-style1">Carbohydrates</th>
            <td class="auto-style11"><asp:Label ID ="Label7" runat ="server"></asp:Label> (g)</td>
                 <td class="auto-style11"><span id = "result5"></span> (g)</td>  
                 <td class="auto-style3">225 - 325 g</td>
        </tr>
        <tr class="toggler">
            <th scope="row" class="auto-style1">Fibers</th>
            <td class="auto-style11"><asp:Label ID ="Label8" runat ="server"></asp:Label> (g)</td> 
           <td class="auto-style11"><span id = "result6"></span> (g)</td>  
            <td class="auto-style3">25-35 g</td>
        </tr>
        <tr class="toggler">
            <th scope="row" class="auto-style1">Sugar Total</th>
            <td class="auto-style11"><asp:Label ID ="Label9" runat ="server"></asp:Label> (g)</td>  
          <td class="auto-style11"><span id = "result7"></span> (g)</td>  
            <td class="auto-style3">Added sugars : 50 g</td>
        </tr>
    </tbody>   
</table>
         <hr />
        <h3 class="text-primary">Sugars</h3> 
   <table class ="table table-striped table-hover collapseOne1 panel-collapse collapse show">
    <thead>
        <tr>
            <th class="auto-style1">Indicator</th>
            <th class="auto-style9">Value(100g)</th> 
            <th scope="col">Value calculated for(<span id = "ammounting2"></span> g)</th>
             <th>Recommended Daily Intake</th> 
        </tr>
    </thead>
    <tbody>
       <tr>
            <th scope="row"  class="auto-style2">Starch</th>
            <td class="auto-style9"><asp:Label ID ="Label50" runat ="server"></asp:Label> (g)</td> 
           <td class="auto-style11"><span id = "result8"></span> (g)</td>  
           <td class="auto-style3">15 g</td>
           </tr>
                <tr>
                         <th scope="row"  class="auto-style2">Sucrose</th>
                          <td class="auto-style9"><asp:Label ID ="Label51" runat ="server"></asp:Label> (g)</td>
                    <td class="auto-style11"><span id = "result9"></span> (g)</td>  
                    <td class="auto-style3">~</td>
                     </tr>
                    <tr>
                         <th scope="row"  class="auto-style2">Glucose</th>
                          <td class="auto-style9"><asp:Label ID ="Label52" runat ="server"></asp:Label> (g)</td> 
                        <td class="auto-style11"><span id = "result10"></span> (g)</td>  
                        <td class="auto-style3">~</td>
                     </tr>
                    <tr>
                         <th scope="row"  class="auto-style2">Fructose</th>
                          <td class="auto-style9"><asp:Label ID ="Label53" runat ="server"></asp:Label> (g)</td> 
                        <td class="auto-style11"><span id = "result11"></span> (g)</td>  
                        <td class="auto-style3">~</td>
                     </tr>
                     <tr>
                         <th scope="row"  class="auto-style2">Lactose</th>
                          <td class="auto-style9"><asp:Label ID ="Label54" runat ="server"></asp:Label> (g)</td>
                         <td class="auto-style11"><span id = "result12"></span> (g)</td>  
                         <td class="auto-style3">~</td>
                     </tr>
                    <tr>
                         <th scope="row"  class="auto-style2">Maltose</th>
                          <td class="auto-style9"><asp:Label ID ="Label55" runat ="server"></asp:Label> (g)</td>
                        <td class="auto-style11"><span id = "result13"></span> (g)</td>  
                        <td class="auto-style3">~</td>
                     </tr>
                      <tr>
                          <th scope="row"   class="auto-style2">Galactose</th>
                          <td class="auto-style9"><asp:Label ID ="Label61" runat ="server"></asp:Label> (g)</td> 
                          <td class="auto-style11"><span id = "result14"></span> (g)</td>  
                          <td class="auto-style3">~</td>
                     </tr>
    </tbody>
</table>
             <hr/>
        <h3 class="text-primary">Protein Amino acids</h3> 
   <table class ="table table-striped table-hover collapseOne2 panel-collapse collapse show">
    <thead>
        <tr>
            <th class="auto-style1">Indicator</th>
            <th class="auto-style10">Value(100g)</th> 
            <th scope="col">Value calculated for(<span id = "ammounting3"></span> g)</th>
             <th>Recommended Daily Intake</th> 

        </tr>
    </thead>
    <tbody>
      <tr>
                          <th scope="row"  class="auto-style2">Tryptophan</th>
                          <td class="auto-style10"><asp:Label ID ="Label65" runat ="server"></asp:Label> (g)</td>
          <td class="auto-style11"><span id = "result15"></span> (g)</td>  
                          <td class="auto-style3">5 mg/kg  <span class="badge badge-primary"> Essential amino acid</span></td>
                        
                     </tr>
                     <tr>
                         <th scope="row"  class="auto-style2">Threonine</th>
                          <td class="auto-style10"><asp:Label ID ="Label66" runat ="server"></asp:Label> (g)</td>  
                         <td class="auto-style11"><span id = "result16"></span> (g)</td>  
                         <td class="auto-style3">20 mg/kg <span class="badge badge-primary"> Essential amino acid</span></td>
                         
                     </tr>
                   <tr>
                         <th scope="row"  class="auto-style2">Isoleucine</th>
                          <td class="auto-style10"><asp:Label ID ="Label67" runat ="server"></asp:Label> (g)</td>
                       <td class="auto-style11"><span id = "result17"></span> (g)</td>  
                       <td class="auto-style3">19 mg/kg  <span class="badge badge-primary"> Essential amino acid</span></td>
                
                     </tr>
                    <tr>
                         <th scope="row"  class="auto-style2">Leucine</th>
                          <td class="auto-style10"><asp:Label ID ="Label68" runat ="server"></asp:Label> (g)</td> 
                        <td class="auto-style11"><span id = "result18"></span> (g)</td>  
                        <td class="auto-style3">42 mg/kg  <span class="badge badge-primary"> Essential amino acid</span></td>
                      
                     </tr>
                   <tr>
                         <th scope="row"  class="auto-style2">Lysine</th>
                          <td class="auto-style10"><asp:Label ID ="Label69" runat ="server"></asp:Label> (g)</td>
                       <td class="auto-style11"><span id = "result19"></span> (g)</td>  
                       <td class="auto-style3">30 - 60 mg/kg  <span class="badge badge-primary"> Essential amino acid</span></td>
                     </tr>
                    <tr>
                         <th scope="row"  class="auto-style2">Methionine</th>
                          <td class="auto-style10"><asp:Label ID ="Label70" runat ="server"></asp:Label> (g)</td> 
                        <td class="auto-style11"><span id = "result20"></span> (g)</td>  
                        <td class="auto-style3">19 mg/kg  <span class="badge badge-primary"> Essential amino acid</span></td>
                     </tr>
                
                      <tr>
                         <th scope="row"  class="auto-style2">Phenylalanine</th>
                          <td class="auto-style10"><asp:Label ID ="Label72" runat ="server"></asp:Label> (g)</td> 
                          <td class="auto-style11"><span id = "result21"></span> (g)</td>  
                          <td class="auto-style3">33 mg/kg  <span class="badge badge-primary"> Essential amino acid</span></td>
                     </tr>
                
                      <tr>
                         <th scope="row"  class="auto-style2">Valine</th>
                          <td class="auto-style10"><asp:Label ID ="Label74" runat ="server"></asp:Label> (g)</td>
                          <td class="auto-style11"><span id = "result22"></span> (g)</td>  
                          <td class="auto-style3">4 mg/kg  <span class="badge badge-primary"> Essential amino acid</span></td>
                     </tr>
                 
                     <tr>
                         <th scope="row"  class="auto-style2">Histidine</th>
                          <td class="auto-style10"><asp:Label ID ="Label76" runat ="server"></asp:Label> (g)</td>  
                         <td class="auto-style11"><span id = "result23"></span> (g)</td>  
                         <td class="auto-style3">14 mg/kg  <span class="badge badge-primary"> Essential amino acid</span></td>
                     </tr>
                     <tr  class="clickable alert-primary" data-toggle="collapse" data-target="#group-of-rows-2" aria-expanded="false" aria-controls="group-of-rows-1">
                         <td><i class="fa fa-plus" aria-hidden="true"></i> <span class="badge badge-secondary">   Click to expand</span></td>
                         <th>More </th>
                         <th>Info</th> 
                         <td></td>
                     </tr>
                   </tbody>
                   <tbody id="group-of-rows-2" class="collapse">
                     <tr>
                         <th scope="row"  class="auto-style2">Tyrosine</th>
                          <td class="auto-style10"><asp:Label ID ="Label73" runat ="server"></asp:Label> (g)</td>
                         <td class="auto-style11"><span id = "result24"></span></td>  
                         <td class="auto-style3">33 mg/kg  <span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>
                      <tr>
                          <th scope="row"  class="auto-style2">Arginine</th>
                          <td class="auto-style10"><asp:Label ID ="Label75" runat ="server"></asp:Label> (g)</td> 
                          <td class="auto-style11"><span id = "result25"></span></td>  
                          <td class="auto-style3">~90mg/kg  <span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>
                      <tr>
                          <th scope="row"  class="auto-style2">Cystine</th>
                          <td class="auto-style10"><asp:Label ID ="Label71" runat ="server"></asp:Label> (g)</td>  
                          <td class="auto-style11"><span id = "result26"></span> (g)</td>  
                          <td class="auto-style3"><span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>
                     <tr>
                         <th scope="row"  class="auto-style2">Alanine</th>
                          <td class="auto-style10"><asp:Label ID ="Label77" runat ="server"></asp:Label> (g)</td> 
                         <td class="auto-style11"><span id = "result27"></span> (g)</td>  
                        <td class="auto-style3"><span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>
                      <tr>
                         <th scope="row"  class="auto-style2">Aspartic acid</th>
                          <td class="auto-style10"><asp:Label ID ="Label78" runat ="server"></asp:Label> (g)</td>  
                          <td class="auto-style11"><span id = "result28"></span> (g)</td>  
                          <td class="auto-style3"><span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>
                     <tr>
                         <th scope="row"  class="auto-style2">Glutamic acid</th>
                          <td class="auto-style10"><asp:Label ID ="Label79" runat ="server"></asp:Label> (g)</td>   
                         <td class="auto-style11"><span id = "result29"></span> (g)</td>  
                         <td class="auto-style3"><span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>
                       <tr>
                         <th scope="row"  class="auto-style2">Glycine</th>
                          <td class="auto-style10"><asp:Label ID ="Label80" runat ="server"></asp:Label> (g)</td> 
                           <td class="auto-style11"><span id = "result30"></span> (g)</td>  
                           <td class="auto-style3"><span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>
                      <tr>
                         <th scope="row"  class="auto-style2">Proline</th>
                          <td class="auto-style10"><asp:Label ID ="Label81" runat ="server"></asp:Label> (g)</td>
                          <td class="auto-style11"><span id = "result31"></span> (g)</td>  
                          <td class="auto-style3"><span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>
                    <tr>
                         <th scope="row"  class="auto-style2">Serine</th>
                          <td class="auto-style10"><asp:Label ID ="Label82" runat ="server"> (g)</asp:Label></td>   
                        <td class="auto-style11"><span id = "result32"></span> (g)</td>  
                        <td class="auto-style3"><span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>
                            
                     <tr>
                         <th scope="row"  class="auto-style2">Hydroxyproline</th>
                          <td class="auto-style14"><asp:Label ID ="Label83" runat ="server"></asp:Label> (g)</td>  
                         <td class="auto-style11"><span id = "result33"></span> (g)</td>  
                         <td class="auto-style3"><span class="badge badge-primary">Conditionally essential amino acid</span></td>
                     </tr>        
    </tbody>
</table>
        <hr />
        <h3 class="text-primary auto-style8">Minerals</h3> 
          <table class ="table table-striped table-hover collapseOne3 panel-collapse collapse show">
    <thead >
        <tr>
            <th class="auto-style1">Indicator</th>
            <th class="auto-style12">Value(100g)</th> 
            <th scope="col">Value calculated for(<span id = "ammounting4"></span> g)</th>
             <th>Recommended Daily Intake</th> 
        </tr>
    </thead>
    <tbody>
       
        <tr>
            <th scope="row"  class="auto-style1">Calcium</th>
            <td class="auto-style12"><asp:Label ID ="Label10" runat ="server"></asp:Label> (mg)</td>   
            <td class="auto-style11"><span id = "result34"></span> (mg)</td>  
            <td class="auto-style3">1200 mg</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style1">Iron</th>
            <td class="auto-style12"><asp:Label ID ="Label11" runat ="server"></asp:Label> (mg)</td>
            <td class="auto-style11"><span id = "result35"></span> (mg)</td>  
            <td class="auto-style3">18 mg</td>
      
        </tr>
        <tr>
            <th scope="row"  class="auto-style1">Magnesium</th>
            <td class="auto-style12"><asp:Label ID ="Label12" runat ="server"></asp:Label> (mg)</td>    
            <td class="auto-style11"><span id = "result36"></span> (mg)</td>  
            <td class="auto-style3">420 mg</td>
        </tr>
         <tr>
            <th scope="row"  class="auto-style7">Phosphorus</th>
            <td class="auto-style12"><asp:Label ID ="Label13" runat ="server"></asp:Label> (mg)</td> 
             <td class="auto-style11"><span id = "result37"></span> (mg)</td>  
             <td class="auto-style3">700 mg</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style7">Potassium</th>
            <td class="auto-style12"><asp:Label ID ="Label14" runat ="server"></asp:Label> (mg)</td> 
            <td class="auto-style11"><span id = "result38"></span> (mg)</td>  
            <td class="auto-style3">4700 mg</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style7">Sodium</th>
            <td class="auto-style12"><asp:Label ID ="Label15" runat ="server"></asp:Label> (mg)</td>
            <td class="auto-style11"><span id = "result39"></span> (mg)</td>  

            <td class="auto-style3">1500 mg</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style7">Zinc</th>
            <td class="auto-style12"><asp:Label ID ="Label16" runat ="server"></asp:Label> (mg)</td> 
            <td class="auto-style11"><span id = "result40"></span> (mg)</td>  
            <td class="auto-style3">11 mg</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style7">Copper</th>
            <td class="auto-style12"><asp:Label ID ="Label17" runat ="server"></asp:Label> (mg)</td>
            <td class="auto-style11"><span id = "result41"></span> (mg)</td>  
           <td class="auto-style3">0.9 mg</td>
      
        </tr>
        <tr>
            <th scope="row"  class="auto-style7">Manganese</th>
            <td class="auto-style12"><asp:Label ID ="Label18" runat ="server"></asp:Label> (mg)</td> 
              <td class="auto-style11"><span id = "result42"></span> (mg)</td>  
            <td class="auto-style3">2.3 mg</td>
        </tr>
         <tr>
            <th scope="row"  class="auto-style6">Selenium</th>
            <td class="auto-style12"><asp:Label ID ="Label19" runat ="server"></asp:Label> (μg)</td>   
               <td class="auto-style11"><span id = "result43"></span> (μg)</td>  
            <td class="auto-style3">55 μg</td>
        </tr>
    </tbody>
</table>
                <hr />
         <h3 class="text-primary auto-style8">Vitamins</h3> 
          <table class ="table table-striped table-hover collapseOne4 panel-collapse collapse show">
    <thead>
        <tr>
            <th class="auto-style6">Indicator</th>
            <th class="auto-style13">Value(100g)</th> 
            <th scope="col">Value calculated for(<span id = "ammounting5"></span> g)</th>
             <th>Recommended Daily Intake</th> 
        </tr>
    </thead>
    <tbody>
        <tr>
            <th scope="row"  class="auto-style6">Vitamin C</th>
            <td class="auto-style13"><asp:Label ID ="Label20" runat ="server"></asp:Label> (mg)</td>
              <td class="auto-style11"><span id = "result44"></span> (mg)</td>  
            <td class="auto-style3">90 mg</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style6">Thiamin(B1)</th>
            <td class="auto-style13"><asp:Label ID ="Label21" runat ="server"></asp:Label> (mg)</td> 
              <td class="auto-style11"><span id = "result45"></span> (mg)</td>  
            <td class="auto-style3">1.2 mg</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style6">Ribolfavin (B2)</th>
            <td class="auto-style13"><asp:Label ID ="Label22" runat ="server"></asp:Label> (mg)</td> 
              <td class="auto-style11"><span id = "result46"></span> (mg)</td>  
            <td class="auto-style3">1.3 mg</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style6">Niacin (B3)</th>
            <td class="auto-style13"><asp:Label ID ="Label23" runat ="server"></asp:Label> (mg)</td>
              <td class="auto-style11"><span id = "result47"></span> (mg)</td>  
            <td class="auto-style3">16 mg</td>
      
        </tr>
        <tr>
            <th scope="row"  class="auto-style6">Pantothenic acid (B5)</th>
            <td class="auto-style13"><asp:Label ID ="Label24" runat ="server"></asp:Label> (mg)</td>    
              <td class="auto-style11"><span id = "result48"></span> (mg)</td>  
            <td class="auto-style3">5 mg</td>
        </tr>
             <tr>
            <th scope="row"  class="auto-style5">Pyridoxine (vitamin B6)</th>
            <td class="auto-style13"><asp:Label ID ="Label25" runat ="server"></asp:Label> (mg)</td> 
                   <td class="auto-style11"><span id = "result49"></span> (mg)</td>  
                 <td class="auto-style3">1.3 mg</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style5">Folate Total (B9)</th>
            <td class="auto-style13"><asp:Label ID ="Label26" runat ="server"></asp:Label> (μg)</td> 
              <td class="auto-style11"><span id = "result50"></span> (μg)</td>  
            <td class="auto-style3">400 μg</td>
        </tr>    
         <tr>
            <th scope="row"  class="auto-style3">Vitamin E</th>
            <td class="auto-style13"><asp:Label ID ="Label40" runat ="server"></asp:Label> (mg)</td>   
               <td class="auto-style11"><span id = "result51"></span> (mg)</td>  
             <td class="auto-style3">15 mg</td>
        </tr>
          <tr>
             <th scope="row"  class="auto-style2">Vitamin D</th>
             <td class="auto-style13"><asp:Label ID ="Label62" runat ="server"></asp:Label> (IU)</td>  
                <td class="auto-style11"><span id = "result52"></span> (IU)</td>  
              <td class="auto-style3">600 IU</td>
        </tr>
         <tr>
            <th scope="row"  class="auto-style4">Vitamin A(IU)</th>
            <td class="auto-style13"><asp:Label ID ="Label32" runat ="server"></asp:Label> (IU)</td>   
               <td class="auto-style11"><span id = "result53"></span> (IU)</td>  
             <td class="auto-style3">5,000 IU</td>
        </tr>
             <tr>
            <th scope="row"  class="auto-style4">Vitamin A(RAE)</th>
            <td class="auto-style13"><asp:Label ID ="Label33" runat ="server"></asp:Label> (μg_RAE)</td>
                   <td class="auto-style11"><span id = "result54"></span> (μg_RAE)</td>  
            <td class="auto-style3">900 μg RAE</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style3">Vitamin K</th>
            <td class="auto-style13"><asp:Label ID ="Label41" runat ="server"></asp:Label> (μg)</td>
              <td class="auto-style11"><span id = "result55"></span> (μg)</td>  
            <td class="auto-style3">120 μg</td>
        </tr>
         <tr>
            <th scope="row"  class="auto-style4">Vitamin B12</th>
            <td class="auto-style13"><asp:Label ID ="Label31" runat ="server"></asp:Label> (μg)</td>  
               <td class="auto-style11"><span id = "result56"></span> (μg)</td>  
            <td class="auto-style3">2.4 μg</td>
        </tr>  
          <tr>
            <th scope="row"  class="auto-style5">Choline Total</th>
            <td class="auto-style13"><asp:Label ID ="Label30" runat ="server"></asp:Label> (mg)</td> 
                <td class="auto-style11"><span id = "result57"></span> (mg)</td>  
             <td class="auto-style3">200-550 mg</td>
        </tr>  
      <tr  class="clickable alert-primary" data-toggle="collapse" data-target="#group-of-rows-3" aria-expanded="false" aria-controls="group-of-rows-3">
                         <td><i class="fa fa-plus" aria-hidden="true"></i>  <span class="badge badge-secondary">   Click to expand</span></td>
                         <th>More </th>
                         <th>Info</th> 
                         <td></td>
                     </tr>
                   </tbody>
                   <tbody id="group-of-rows-3" class="collapse">
         <tr>
            <th scope="row"  class="auto-style5">Folic Acid (part of B9)</th>
            <td class="auto-style13"><asp:Label ID ="Label27" runat ="server"></asp:Label> (μg)</td>   
              <td class="auto-style11"><span id = "result58"></span> (μg)</td> 
            <td class="auto-style3">~</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style5">Food Folate</th>
            <td class="auto-style13"><asp:Label ID ="Label28" runat ="server"></asp:Label> (μg)</td>
             <td class="auto-style11"><span id = "result59"></span> (μg)</td> 
            <td class="auto-style3">~</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style5">Dietary folate equivalent</th>
            <td class="auto-style13"><asp:Label ID ="Label29" runat ="server"></asp:Label> (μg_DFE)</td>
             <td class="auto-style11"><span id = "result60"></span> (μg_DFE)</td> 
            <td class="auto-style3">~</td>
      
        </tr>
        <tr>
            <th scope="row"  class="auto-style4">Retinol</th>
            <td class="auto-style13"><asp:Label ID ="Label34" runat ="server"></asp:Label> (μg)</td> 
             <td class="auto-style11"><span id = "result61"></span> (μg)</td> 
            <td class="auto-style3">~</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style4">Alpha Carotene</th>
            <td class="auto-style13"><asp:Label ID ="Label35" runat ="server"></asp:Label> (μg)</td>
             <td class="auto-style11"><span id = "result62"></span> (μg)</td> 
            <td class="auto-style3">~</td>
      
        </tr>
        <tr>
            <th scope="row"  class="auto-style4">Beta Carotene</th>
            <td class="auto-style13"><asp:Label ID ="Label36" runat ="server"></asp:Label> (μg)</td> 
             <td class="auto-style11"><span id = "result63"></span> (μg)</td> 
            <td class="auto-style3">~</td>
        </tr>
             <tr>
            <th scope="row"  class="auto-style3">Beta Cryptoxanthin</th>
            <td class="auto-style13"><asp:Label ID ="Label37" runat ="server"></asp:Label> (μg)</td> 
                  <td class="auto-style11"><span id = "result64"></span> (μg)</td> 
            <td class="auto-style3">~</td>
              </tr>       
              <tr>
                  <th scope="row"  class="auto-style2">Vitamin E, added</th>
                  <td class="auto-style13"><asp:Label ID ="Label84" runat ="server"></asp:Label> (mg)</td>  
                   <td class="auto-style11"><span id = "result65"></span> (mg)</td> 
                  <td class="auto-style3">~</td>
              </tr>
               <tr>
                   <th scope="row"  class="auto-style2">Vitamin B-12, added</th>
                   <td class="auto-style13"><asp:Label ID ="Label85" runat ="server"></asp:Label> (μg)</td> 
                    <td class="auto-style11"><span id = "result66"></span> (μg)</td> 
                   <td class="auto-style3">~</td>
              </tr>   
    </tbody>
</table>
                <hr />
        <h3 class="text-primary auto-style8">Fats</h3> 
          <table class ="table table-striped table-hover collapseOne5 panel-collapse collapse show">
    <thead>
        <tr>
            <th class="auto-style2">Indicator</th>
            <th class="auto-style14">Value(100g)</th> 
            <th scope="col">Value calculated for(<span id = "ammounting6"></span> g)</th>
            <th>Recommended Daily Intake</th> 
        </tr>
    </thead>
    <tbody>
         <tr>
            <th scope="row"  class="auto-style3">Saturated Fats</th>
            <td class="auto-style14"><asp:Label ID ="Label42" runat ="server"></asp:Label> (g)</td>  
              <td class="auto-style11"><span id = "result67"></span> (g)</td> 
             <td class="auto-style3">10 - 15 g</td>
        </tr>
            <tr>
            <th scope="row"  class="auto-style2">Monounsaturated fat</th>
            <td class="auto-style14"><asp:Label ID ="Label43" runat ="server"></asp:Label> (g)</td>
                 <td class="auto-style11"><span id = "result68"></span> (g)</td> 
                <td class="auto-style3">10 - 20 g</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style2">Polyunsaturated fats</th>
            <td class="auto-style14"><asp:Label ID ="Label44" runat ="server"></asp:Label> (g)</td>   
             <td class="auto-style11"><span id = "result69"></span> (g)</td> 
            <td class="auto-style3">10 - 20g</td>
        </tr>
                    <tr>
                         <th scope="row"  class="auto-style2">Linoleic acid(C18:2 undifferentiated)</th>
                          <td class="auto-style14"><asp:Label ID ="Label96" runat ="server"></asp:Label> (g)</td>   
                         <td class="auto-style11"><span id = "result70"></span> (g)</td> 
                            <td class="auto-style3">12 - 17 g  <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>
            
                        <tr>
                         <th scope="row"  class="auto-style2">Docosahexaenoic acid (DHA, Cervonic acid)(C22:6 n-3)</th>
                          <td class="auto-style14"><asp:Label ID ="Label99" runat ="server"></asp:Label> (g)</td>  
                             <td class="auto-style11"><span id = "result71"></span> (g)</td> 
                            <td class="auto-style3">100 - 800 mg  <span class="badge badge-success">omega-3 fatty acid</span></td><%--omega3--%>
                         
                     </tr>
                <tr>
                         <th scope="row"  class="auto-style2">Eicosapentaenoic acid (EPA, Timnodonic acid)(C20:5 n-3)</th>
                          <td class="auto-style14"><asp:Label ID ="Label105" runat ="server"></asp:Label> (g)</td>  
                     <td class="auto-style11"><span id = "result72"></span> (g)</td> 
                            <td class="auto-style3">0.5 - 4 g  <span class="badge badge-success">omega-3 fatty acid</span></td><%--omega3--%>
                     </tr>
                  <tr>
                         <th scope="row"  class="auto-style2">Docosapentaenoic acid (C22:5 n-3)</th>
                          <td class="auto-style14"><asp:Label ID ="Label107" runat ="server"></asp:Label> (g)</td>  
                       <td class="auto-style11"><span id = "result73"></span> (g)</td> 
                            <td class="auto-style3">72-312 mg   <span class="badge badge-success">omega-3 fatty acid</span></td>
                     </tr>
                       <tr>
                         <th scope="row"  class="auto-style2">Alpha-linolenic acid(C18:3 n-3 c,c,c)</th>
                          <td class="auto-style14"><asp:Label ID ="Label135" runat ="server"></asp:Label> (g)</td> 
                            <td class="auto-style11"><span id = "result74"></span> (g)</td> 
                          <td class="auto-style3">1.59 - 2.06 g <span class="badge badge-success">omega-3 fatty acid</span></td>
                       </tr>
                       <tr>
                         <th scope="row"  class="auto-style2">Alpha-linolenic acid(C18:3 isomer)</th>
                          <td class="auto-style14"><asp:Label ID ="Label139" runat ="server"></asp:Label> (g)</td>   
                            <td class="auto-style11"><span id = "result75"></span> (g)</td> 
                          <td class="auto-style3">1.59 - 2.06 g  <span class="badge badge-success">omega-3 fatty acid</span></td>
                       </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Erucic acid(C22:1 t)</th>
                          <td class="auto-style14"><asp:Label ID ="Label117" runat ="server"></asp:Label> (g)</td> 
                             <td class="auto-style11"><span id = "result76"></span> (g)</td> 
                            <td class="auto-style3">500 mg <span class="badge badge-info">omega-9 fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Linoleic acid(C18:2 t not further defined)</th>
                          <td class="auto-style14"><asp:Label ID ="Label118" runat ="server"></asp:Label> (g)</td>  
                             <td class="auto-style11"><span id = "result77"></span> (g)</td> 
                            <td class="auto-style3">~ <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>
                       <tr>
                         <th scope="row"  class="auto-style2">Linoelaidic acid(C18:2 t,t)</th>
                          <td class="auto-style14"><asp:Label ID ="Label120" runat ="server"></asp:Label> (g)</td>
                             <td class="auto-style11"><span id = "result78"> (g)</span></td> 
                            <td class="auto-style3">~ <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Linolelaidic acid(C18:2 CLAs)</th>
                          <td class="auto-style14"><asp:Label ID ="Label121" runat ="server"></asp:Label> (g)</td> 
                              <td class="auto-style11"><span id = "result79"></span> (g)</td> 
                            <td class="auto-style3">~ <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>
                 
                        <tr>
                         <th scope="row"  class="auto-style2">Nervonic acid(C24:1 c)</th>
                          <td class="auto-style14"><asp:Label ID ="Label122" runat ="server"></asp:Label> (g)</td>  
                              <td class="auto-style11"><span id = "result80"></span> (g)</td> 
                            <td class="auto-style3">(60-140 mg)Healthy for infants <span class="badge badge-secondary">Monounsaturated fat</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Eicosadienoic acid(C20:2 n-6 c,c)</th>
                          <td class="auto-style14"><asp:Label ID ="Label123" runat ="server"></asp:Label> (g)</td> 
                              <td class="auto-style11"><span id = "result81"></span> (g)</td> 
                            <td class="auto-style3">Essential for infants  <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>
         
                       <tr>
                         <th scope="row"  class="auto-style2">Eicosatetraenoic acid (ETA)(C20:4 undifferentiated)</th>
                          <td class="auto-style14"><asp:Label ID ="Label98" runat ="server"></asp:Label> (g)</td>  
                             <td class="auto-style11"><span id = "result82"></span> (g)</td> 
                            <td class="auto-style3">~  <span class="badge badge-success">Combination of 20:4 fatty acids</span></td><%--omega3--%>
                      </tr>
        <tr>
            <th scope="row"  class="auto-style2">Cholesterol</th>
            <td class="auto-style14"><asp:Label ID ="Label45" runat ="server"></asp:Label> (mg)</td>  
            <td class="auto-style11"><span id = "result83"></span> (mg)</td> 
            <td class="auto-style3">300 mg</td>
        </tr>       
      <tr  class="clickable alert-primary" data-toggle="collapse" data-target="#group-of-rows-5" aria-expanded="false" aria-controls="group-of-rows-5">
                         <td><i class="fa fa-plus" aria-hidden="true"></i>  <h6><span class="badge badge-secondary">   Click to expand</span></h6></td>
                         <th>More </th>
                         <th>Info</th> 
                         <td></td>
                     </tr>
                   </tbody>
                   <tbody id="group-of-rows-5" class="collapse">
                      <tr>
                         <th scope="row"  class="auto-style2">Eicosatrienoic acid(C20:3 n-3)</th>
                          <td class="auto-style14"><asp:Label ID ="Label136" runat ="server"></asp:Label> (g)</td>
                            <td class="auto-style11"><span id = "result84"></span> (g)</td> 
                          <td class="auto-style3">~ <span class="badge badge-success">omega-3 fatty acid</span></td>
                     </tr>
                          <tr>
                         <th scope="row"  class="auto-style2">Heneicosapentaenoic acid(C21:5)</th>
                          <td class="auto-style14"><asp:Label ID ="Label140" runat ="server"></asp:Label> (g)</td> 
                                <td class="auto-style11"><span id = "result85"></span> (g)</td> 
                          <td class="auto-style3">non-essential <span class="badge badge-success">omega-3 fatty acid</span></td>
                     </tr>
                      <tr>
                         <th scope="row"  class="auto-style2">Linoleic acid(C18:2 n-6 c,c)</th>
                          <td class="auto-style14"><asp:Label ID ="Label126" runat ="server"></asp:Label> (g)</td> 
                            <td class="auto-style11"><span id = "result86"></span> (g)</td> 
                            <td class="auto-style3">~ <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Erucic acid(C22:1 c)</th>
                          <td class="auto-style14"><asp:Label ID ="Label127" runat ="server"></asp:Label> (g)</td>   
                             <td class="auto-style11"><span id = "result87"></span> (g)</td> 
                            <td class="auto-style3">~ <span class="badge badge-info">omega-9 fatty acid</span></td>
                     </tr>
                      <tr>
                         <th scope="row"  class="auto-style2">gamma-Linolenic acid(C18:3 n-6 c,c,c)</th>
                          <td class="auto-style14"><asp:Label ID ="Label128" runat ="server"></asp:Label> (g)</td>  
                           <td class="auto-style11"><span id = "result88"></span> (g)</td> 
                          <td class="auto-style3">~ <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>
                     <tr>
                         <th scope="row"  class="auto-style2">Dihomogamma-linolenic acid(C20:3 n-6)</th>
                          <td class="auto-style14"><asp:Label ID ="Label137" runat ="server"></asp:Label> (g)</td> 
                          <td class="auto-style11"><span id = "result89"></span> (g)</td> 
                          <td class="auto-style3">~ <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>
                           <tr>
                         <th scope="row"  class="auto-style2">Arachidonic acid (C20:4 n-6)</th>
                          <td class="auto-style14"><asp:Label ID ="Label138" runat ="server"></asp:Label> (g)</td>  
                                <td class="auto-style11"><span id = "result90"></span> (g)</td> 
                          <td class="auto-style3">non-essential(conditional) <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr> 
                     <tr>
                         <th scope="row"  class="auto-style2">Adrenic acid(C22:4)</th>
                          <td class="auto-style14"><asp:Label ID ="Label141" runat ="server"></asp:Label> (g)</td> 
                          <td class="auto-style11"><span id = "result91"></span> (g)</td> 
                          <td class="auto-style3">non-essential <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>  
                               
                     <tr>
                         <th scope="row"  class="auto-style2">Butyric acid(C4:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label86" runat ="server"></asp:Label> (g)</td> 
                          <td class="auto-style11"><span id = "result92"></span> (g)</td> 
                         <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                       
                        <tr>
                         <th scope="row"  class="auto-style2">Caproic acid(C6:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label87" runat ="server"></asp:Label> (g)</td>   
                             <td class="auto-style11"><span id = "result93"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                       
                          <tr>
                         <th scope="row"  class="auto-style2">Caprylic acid(C8:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label88" runat ="server"></asp:Label> (g)</td>
                               <td class="auto-style11"><span id = "result94"></span> (g)</td> 
                              <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                       <tr>
                         <th scope="row"  class="auto-style2">Capric acid(C10:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label89" runat ="server"></asp:Label> (g)</td> 
                            <td class="auto-style11"><span id = "result95"></span> (g)</td> 
                           <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Lauric acid(C12:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label90" runat ="server"></asp:Label> (g)</td>  
                             <td class="auto-style11"><span id = "result96"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                             <tr>
                         <th scope="row"  class="auto-style2">Tridecylic acid(C13:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label133" runat ="server"></asp:Label> (g)</td> 
                                  <td class="auto-style11"><span id = "result97"></span> (g)</td> 
                          <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Myristic acid(C14:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label91" runat ="server"></asp:Label> (g)</td> 
                             <td class="auto-style11"><span id = "result98"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                            <tr>
                         <th scope="row"  class="auto-style2">Pentadecylic acid(C15:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label112" runat ="server"></asp:Label> (g)</td> 
                                 <td class="auto-style11"><span id = "result99"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Palmitic acid(C16:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label92" runat ="server"></asp:Label> (g)</td> 
                             <td class="auto-style11"><span id = "result100"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                            
                        <tr>
                         <th scope="row"  class="auto-style2">Margaric acid(C17:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label113" runat ="server"></asp:Label> (g)</td>  
                             <td class="auto-style11"><span id = "result101"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Stearic acid(C18:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label93" runat ="server"></asp:Label> (g)</td> 
                             <td class="auto-style11"><span id = "result102"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Arachidic acid(C20:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label94" runat ="server"></asp:Label> (g)</td> 
                             <td class="auto-style11"><span id = "result103"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Behenic acid(C22:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label100" runat ="server"></asp:Label> (g)</td>   
                             <td class="auto-style11"><span id = "result104"></span> (g)</td> 
                            <td class="auto-style3">non-essential  <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                       
                        <tr>
                         <th scope="row"  class="auto-style2">Lignoceric acid(C24:0)</th>
                          <td class="auto-style14"><asp:Label ID ="Label114" runat ="server"></asp:Label> (g)</td> 
                             <td class="auto-style11"><span id = "result105"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-dark">saturated fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Oleic(C18:1 undifferentiated)</th>
                          <td class="auto-style14"><asp:Label ID ="Label95" runat ="server"></asp:Label> (g)</td> 
                             <td class="auto-style11"><span id = "result106"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info">omega-9 fatty acid</span></td>
                     </tr>   
                                         
                        <tr>
                         <th scope="row"  class="auto-style2">Erucic acid(C22:1 undifferentiated)</th>
                          <td class="auto-style14"><asp:Label ID ="Label106" runat ="server"></asp:Label> (g)</td>
                             <td class="auto-style11"><span id = "result107"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info">omega-9 fatty acid</span></td>
                     </tr>
                        <tr>
                         <td class="auto-style2">α-Calendic acid(C18:3 undifferentiated)</td>
                          <td class="auto-style14"><asp:Label ID ="Label97" runat ="server"></asp:Label> (g)</td> 
                            <td class="auto-style11"><span id = "result108"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-warning">omega-6 fatty acid</span></td>
                     </tr>                
                      
                        <tr>
                         <th scope="row"  class="auto-style2">Myristoleic acid (C14:1)</th>
                          <td class="auto-style14"><asp:Label ID ="Label101" runat ="server"></asp:Label> (g)</td>   
                            <td class="auto-style11"><span id = "result109"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info">omega-5 fatty acid</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Palmitoleic acid(C16:1 undifferentiated)</th>
                          <td class="auto-style14"><asp:Label ID ="Label102" runat ="server"></asp:Label> (g)</td>  
                            <td class="auto-style11"><span id = "result110"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info">omega-7 fatty acid</span></td>
                     </tr>
                         <tr>
                         <th scope="row"  class="auto-style2">Paullinic acid(C20:1)</th>
                          <td class="auto-style14"><asp:Label ID ="Label104" runat ="server"></asp:Label> (g)</td>  
                             <td class="auto-style11"><span id = "result111"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info">omega-7 fatty acid</span></td>
                     </tr> 
                        <tr>
                         <th scope="row"  class="auto-style2">α-Parinaric acid(C18:4)</th>
                          <td class="auto-style14"><asp:Label ID ="Label103" runat ="server"></asp:Label> (g)</td>
                            <td class="auto-style11"><span id = "result112"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info"> Conjugated fatty acid</span></td>
                     </tr>
                           <tr>
                         <th scope="row"  class="auto-style2">Rumenic acid(C18:2 i)</th>
                          <td class="auto-style14"><asp:Label ID ="Label119" runat ="server"></asp:Label> (g)</td>   
                               <td class="auto-style11"><span id = "result113"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info"> Conjugated fatty acid</span></td>
                     </tr>   
                   
            
                        <tr>
                         <th scope="row"  class="auto-style2">Sapienic acid(C16:1 t)</th>
                          <td class="auto-style14"><asp:Label ID ="Label115" runat ="server"></asp:Label> (g)</td>  
                                  <td class="auto-style11"><span id = "result114"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info">Monounsaturated Fat</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Elaidic acid(C18:1 t)</th>
                          <td class="auto-style14"><asp:Label ID ="Label116" runat ="server"></asp:Label> (g)</td>
                                  <td class="auto-style11"><span id = "result115"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info">Monounsaturated Fat</span></td>
                     </tr>                      
                        <tr>
                         <th scope="row"  class="auto-style2">Sapienic acid(C16:1 c)</th>
                          <td class="auto-style14"><asp:Label ID ="Label124" runat ="server"></asp:Label> (g)</td> 
                                  <td class="auto-style11"><span id = "result116"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info">Monounsaturated Fat</span></td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Vaccenic acid(C18:1 c)</th>
                          <td class="auto-style14"><asp:Label ID ="Label125" runat ="server"></asp:Label> (g)</td>  
                                  <td class="auto-style11"><span id = "result117"></span> (g)</td> 
                            <td class="auto-style3">non-essential <span class="badge badge-info">Monounsaturated Fat</span></td>
                     </tr>
                
                      <tr>
                         <th scope="row"  class="auto-style2">10-Heptadecenoic acid	(C17:1)</th>
                          <td class="auto-style14"><asp:Label ID ="Label129" runat ="server"></asp:Label> (g)</td> 
                                <td class="auto-style11"><span id = "result118"></span> (g)</td> 
                          <td class="auto-style3">non-essential <span class="badge badge-info">Monounsaturated Fat</span></td>
                     </tr>
                           <tr>
                         <th scope="row"  class="auto-style2">10-Pentadecenoic acid(C15:1)</th>
                          <td class="auto-style14"><asp:Label ID ="Label134" runat ="server"></asp:Label> (g)</td> 
                                     <td class="auto-style11"><span id = "result119"></span> (g)</td> 
                          <td class="auto-style3">non-essential <span class="badge badge-info">Monounsaturated Fat</span></td>
                     </tr>
                      <tr>
                         <th scope="row"  class="auto-style2">20:3(C20:3 undifferentiated)</th>
                          <td class="auto-style14"><asp:Label ID ="Label130" runat ="server"></asp:Label> (g)</td>   
                                <td class="auto-style11"><span id = "result120"></span> (g)</td> 
                          <td class="auto-style3">non-essential <span class="badge badge-info">Polyunsaturated  Fat</span></td>
                     </tr>
                      <tr>
                         <th scope="row"  class="auto-style2">Fatty acids, total trans-monoenoic</th>
                          <td class="auto-style14"><asp:Label ID ="Label131" runat ="server"></asp:Label> (g)</td> 
                                <td class="auto-style11"><span id = "result121"></span> (g)</td> 
                          <td class="auto-style3">non-essential <span class="badge badge-danger">Trans fatty acid</span></td>
                     </tr>
                      <tr>
                         <th scope="row"  class="auto-style2">Fatty acids, total trans-polyenoic</th>
                          <td class="auto-style14"><asp:Label ID ="Label132" runat ="server"></asp:Label> (g)</td>
                                <td class="auto-style11"><span id = "result122"></span> (g)</td> 
                          <td class="auto-style3">non-essential<span class="badge badge-danger">Trans fatty acid</span></td>
                     </tr>
                
                  
             
                  
               
                                            
               
    </tbody>
          
      
</table>    
                        <hr />
        <h3 class="text-primary auto-style8">Other</h3> 
          <table class ="table table-striped collapseOne6 panel-collapse collapse show">
    <thead>
        <tr>
            <th class="auto-style2">Indicator</th>
            <th class="auto-style14">Value(100g)</th> 
            <th scope="col">Value calculated for(<span id = "ammounting7"></span> g)</th>
            <th>Recommended Daily Intake</th> 
        </tr>
    </thead>
              
    <tbody>
         
             <tr>
            <th scope="row"  class="auto-style3">Lycopene</th>
            <td class="auto-style13"><asp:Label ID ="Label38" runat ="server"></asp:Label> (μg)</td> 
                  <td class="auto-style11"><span id = "result123"></span> (μg)</td> 
            <td class="auto-style3">non-essential</td>
        </tr>
        <tr>
            <th scope="row"  class="auto-style3">Lutein and zeaxanthin</th>
            <td class="auto-style13"><asp:Label ID ="Label39" runat ="server"></asp:Label> (μg)</td> 
             <td class="auto-style11"><span id = "result124"></span> (μg)</td> 
            <td class="auto-style3">non-essential</td>
        </tr>
                  <tr>
                         <th scope="row"  class="auto-style2">Caffeine</th>
                          <td class="auto-style14"><asp:Label ID ="Label58" runat ="server"></asp:Label> (mg)</td>  
                       <td class="auto-style11"><span id = "result125"></span> (mg)</td> 
                         <td class="auto-style3">(45-300 mg)non-essential</td>
                     </tr>
                      <tr>
                         <th scope="row"  class="auto-style2">Energy</th>
                          <td class="auto-style14"><asp:Label ID ="Label59" runat ="server"></asp:Label> (kJ)</td>   
                           <td class="auto-style11"><span id = "result126"></span> (kJ)</td> 
                          <td class="auto-style3">8400 kJ</td>
                     </tr>
           <tr>
                         <th scope="row"  class="auto-style2">Alcohol, ethyl</th>
                          <td class="auto-style14"><asp:Label ID ="Label56" runat ="server"></asp:Label> (g)</td> 
                <td class="auto-style11"><span id = "result127"></span> (g)</td> 
                         <td class="auto-style3">50 g(non-essential)</td>
                     </tr>
            <tr>
                         <th scope="row"  class="auto-style2">Theobromine</th>
                          <td class="auto-style14"><asp:Label ID ="Label57" runat ="server"></asp:Label> (mg)</td>  
                 <td class="auto-style11"><span id = "result128"></span> (mg)</td> 
                          <td class="auto-style3">250 mg(non-essential)</td>
                     </tr>   
           <tr>
                         <th scope="row"  class="auto-style2">Phytosterols</th>
                          <td class="auto-style14"><asp:Label ID ="Label108" runat ="server"></asp:Label> (mg)</td> 
                <td class="auto-style11"><span id = "result129"></span> (mg)</td> 
                            <td class="auto-style3">1 - 1.5g(non-essential)</td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Stigmasterol</th>
                          <td class="auto-style14"><asp:Label ID ="Label109" runat ="server"></asp:Label> (mg)</td> 
                             <td class="auto-style11"><span id = "result130"></span> (mg)</td> 
                            <td class="auto-style3">1 - 1.5g(non-essential)</td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Campesterol</th>
                          <td class="auto-style14"><asp:Label ID ="Label110" runat ="server"></asp:Label> (mg)</td>   
                             <td class="auto-style11"><span id = "result131"></span> (mg)</td> 
                            <td class="auto-style3">1 - 1.5g(non-essential)</td>
                     </tr>
                        <tr>
                         <th scope="row"  class="auto-style2">Beta-sitosterol</th>
                          <td class="auto-style14"><asp:Label ID ="Label111" runat ="server"></asp:Label> (mg)</td> 
                             <td class="auto-style11"><span id = "result132"></span> (mg)</td> 
                            <td class="auto-style3">1 - 1.5g(non-essential)</td>
                     </tr>
                           <tr>
                         <th scope="row"  class="auto-style2">Betaine</th>
                          <td class="auto-style14"><asp:Label ID ="Label64" runat ="server"></asp:Label> (mg)</td> 
                                <td class="auto-style11"><span id = "result133"></span> (mg)</td> 
                       <td class="auto-style3">non-essential</td>
                     </tr>
            
          </tbody>
       
        </table>
            <div class="alert alert-dark" role="alert">
  Footnotes for <asp:Label ID ="Label150" runat ="server"></asp:Label><br />
  Source: Nutrient data for this listing was provided by USDA SR-21.<br />
  Recommended Daily Intake is according to the World Health Organization.
</div>
     </div>   
    </div> 
    </div>  
    </div>   
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.js"></script>
    <script>
        $('.header').click(function () {
            var $this = $(this);
            $(this).nextUntil('tr.header').slideToggle(100).promise().done(function () {
                $this.find('span').text(function (_, value) {
                    return value == '-' ? '+' : '-'
                });
            });
        });
        $('#my-accordion').on('show hide', function () {
            $(this).css('height', 'auto');
        });
        $('#collapse').on('show hide', function () {
            $(this).css('height', 'auto');
        });
    </script>
    <script>function multiplyBy() {
            var num1 = document.getElementById("ammounting").value;
            document.getElementById("ammounting1").innerHTML = num1;
            document.getElementById("ammounting2").innerHTML = num1;
            document.getElementById("ammounting3").innerHTML = num1;
            document.getElementById("ammounting4").innerHTML = num1;
            document.getElementById("ammounting5").innerHTML = num1;
            document.getElementById("ammounting6").innerHTML = num1;
            document.getElementById("ammounting7").innerHTML = num1;
            var num3 = document.getElementById("Label3").innerHTML;
            var num2 = document.getElementById("Label2").innerHTML;
            var picu = parseFloat((1 / 100).toFixed(2));
            var num4 = document.getElementById("Label00").innerHTML;
            var num5 = document.getElementById("Label4").innerHTML;
            var num6 = document.getElementById("Label5").innerHTML;
            var num7 = document.getElementById("Label7").innerHTML;
            var num8 = document.getElementById("Label8").innerHTML;
            var num9 = document.getElementById("Label9").innerHTML;
            var num10 = document.getElementById("Label50").innerHTML;
            var num11 = document.getElementById("Label51").innerHTML;
            var num12 = document.getElementById("Label52").innerHTML;
            var num13 = document.getElementById("Label53").innerHTML;
            var num14 = document.getElementById("Label54").innerHTML;
            var num15 = document.getElementById("Label55").innerHTML;
            var num16 = document.getElementById("Label61").innerHTML;
            var num17 = document.getElementById("Label65").innerHTML;
            var num18 = document.getElementById("Label66").innerHTML;
            var num19 = document.getElementById("Label67").innerHTML;
            var num20 = document.getElementById("Label68").innerHTML;
            var num21 = document.getElementById("Label69").innerHTML;
            var num22 = document.getElementById("Label70").innerHTML;
            var num23 = document.getElementById("Label72").innerHTML;
            var num24 = document.getElementById("Label74").innerHTML;
            var num25 = document.getElementById("Label76").innerHTML;
            var num26 = document.getElementById("Label73").innerHTML;
            var num27 = document.getElementById("Label75").innerHTML;
            var num28 = document.getElementById("Label71").innerHTML;
            var num29 = document.getElementById("Label77").innerHTML;
            var num30 = document.getElementById("Label78").innerHTML;
            var num31 = document.getElementById("Label79").innerHTML;
            var num32 = document.getElementById("Label80").innerHTML;
            var num33 = document.getElementById("Label81").innerHTML;
            var num34 = document.getElementById("Label82").innerHTML;
            var num35 = document.getElementById("Label83").innerHTML;
            var num36 = document.getElementById("Label10").innerHTML;
            var num37 = document.getElementById("Label11").innerHTML;
            var num38 = document.getElementById("Label12").innerHTML;
            var num39 = document.getElementById("Label13").innerHTML;
            var num40 = document.getElementById("Label14").innerHTML;
            var num41 = document.getElementById("Label15").innerHTML;
            var num42 = document.getElementById("Label16").innerHTML;
            var num43 = document.getElementById("Label17").innerHTML;
            var num44 = document.getElementById("Label18").innerHTML;
            var num45 = document.getElementById("Label19").innerHTML;
            var num46 = document.getElementById("Label20").innerHTML;
            var num47 = document.getElementById("Label21").innerHTML;
            var num48 = document.getElementById("Label22").innerHTML;
            var num49 = document.getElementById("Label23").innerHTML;
            var num50 = document.getElementById("Label24").innerHTML;
            var num51 = document.getElementById("Label25").innerHTML;
            var num52 = document.getElementById("Label26").innerHTML;
            var num53 = document.getElementById("Label40").innerHTML;
            var num54 = document.getElementById("Label62").innerHTML;
            var num55 = document.getElementById("Label32").innerHTML;
            var num56 = document.getElementById("Label33").innerHTML;
            var num57 = document.getElementById("Label41").innerHTML;
            var num58 = document.getElementById("Label31").innerHTML;
            var num59 = document.getElementById("Label30").innerHTML;
            var num60 = document.getElementById("Label27").innerHTML;
            var num61 = document.getElementById("Label28").innerHTML;
            var num62 = document.getElementById("Label29").innerHTML;
            var num63 = document.getElementById("Label34").innerHTML;
            var num64 = document.getElementById("Label35").innerHTML;
            var num65 = document.getElementById("Label36").innerHTML;
            var num66 = document.getElementById("Label37").innerHTML;
            var num67 = document.getElementById("Label84").innerHTML;
            var num68 = document.getElementById("Label85").innerHTML;
            var num69 = document.getElementById("Label42").innerHTML;
            var num70 = document.getElementById("Label43").innerHTML;
            var num71 = document.getElementById("Label44").innerHTML;
            var num72 = document.getElementById("Label96").innerHTML;
            var num73 = document.getElementById("Label99").innerHTML;
            var num74 = document.getElementById("Label105").innerHTML;
            var num75 = document.getElementById("Label107").innerHTML;
            var num76 = document.getElementById("Label135").innerHTML;
            var num77 = document.getElementById("Label139").innerHTML;
            var num78 = document.getElementById("Label117").innerHTML;
            var num79 = document.getElementById("Label118").innerHTML;
            var num80 = document.getElementById("Label120").innerHTML;
            var num81 = document.getElementById("Label121").innerHTML;
            var num82 = document.getElementById("Label122").innerHTML;
            var num83 = document.getElementById("Label123").innerHTML;
            var num84 = document.getElementById("Label98").innerHTML;
            var num85 = document.getElementById("Label45").innerHTML;
            var num86 = document.getElementById("Label136").innerHTML;
            var num87 = document.getElementById("Label140").innerHTML;
            var num88 = document.getElementById("Label126").innerHTML;
            var num89 = document.getElementById("Label127").innerHTML;
            var num90 = document.getElementById("Label128").innerHTML;
            var num91 = document.getElementById("Label137").innerHTML;
            var num92 = document.getElementById("Label138").innerHTML;
            var num93 = document.getElementById("Label141").innerHTML;
            var num94 = document.getElementById("Label86").innerHTML;
            var num95 = document.getElementById("Label87").innerHTML;
            var num96 = document.getElementById("Label88").innerHTML;
            var num97 = document.getElementById("Label89").innerHTML;
            var num98 = document.getElementById("Label90").innerHTML;
            var num99 = document.getElementById("Label133").innerHTML;
            var num100 = document.getElementById("Label91").innerHTML;
            var num101 = document.getElementById("Label112").innerHTML;
            var num102 = document.getElementById("Label92").innerHTML;
            var num103 = document.getElementById("Label113").innerHTML;
            var num104 = document.getElementById("Label93").innerHTML;
            var num105 = document.getElementById("Label94").innerHTML;
            var num106 = document.getElementById("Label100").innerHTML;
            var num107 = document.getElementById("Label114").innerHTML;
            var num108 = document.getElementById("Label95").innerHTML;
            var num109 = document.getElementById("Label106").innerHTML;
            var num110 = document.getElementById("Label97").innerHTML;
            var num111 = document.getElementById("Label101").innerHTML;
            var num112 = document.getElementById("Label102").innerHTML;
            var num113 = document.getElementById("Label104").innerHTML;
            var num114 = document.getElementById("Label103").innerHTML;
            var num115 = document.getElementById("Label119").innerHTML;
            var num116 = document.getElementById("Label115").innerHTML;
            var num117 = document.getElementById("Label116").innerHTML;
            var num118 = document.getElementById("Label124").innerHTML;
            var num119 = document.getElementById("Label125").innerHTML;
            var num120 = document.getElementById("Label129").innerHTML;
            var num121 = document.getElementById("Label134").innerHTML;
            var num122 = document.getElementById("Label130").innerHTML;
            var num123 = document.getElementById("Label131").innerHTML;
            var num124 = document.getElementById("Label132").innerHTML;
            var num125 = document.getElementById("Label38").innerHTML;
            var num126 = document.getElementById("Label39").innerHTML;
            var num127 = document.getElementById("Label58").innerHTML;
            var num128 = document.getElementById("Label59").innerHTML;
            var num129 = document.getElementById("Label56").innerHTML;
            var num130 = document.getElementById("Label57").innerHTML;
            var num131 = document.getElementById("Label108").innerHTML;
            var num132 = document.getElementById("Label109").innerHTML;
            var num133 = document.getElementById("Label110").innerHTML;
            var num134 = document.getElementById("Label111").innerHTML;
            var num135 = document.getElementById("Label64").innerHTML;
            document.getElementById("result").innerHTML = parseFloat((num1 * num2 * picu).toFixed(2));
            document.getElementById("result1").innerHTML = parseFloat((num1 * num3 * picu).toFixed(2));
            document.getElementById("result2").innerHTML = parseFloat((num1 * num4 * picu).toFixed(2));
            document.getElementById("result3").innerHTML = parseFloat((num1 * num5 * picu).toFixed(2));
            document.getElementById("result4").innerHTML = parseFloat((num1 * num6 * picu).toFixed(2));
            document.getElementById("result5").innerHTML = parseFloat((num1 * num7 * picu).toFixed(2));
            document.getElementById("result6").innerHTML = parseFloat((num1 * num8 * picu).toFixed(2));
            document.getElementById("result7").innerHTML = parseFloat((num1 * num9 * picu).toFixed(2));
            document.getElementById("result8").innerHTML = parseFloat((num1 * num10 * picu).toFixed(2));
            document.getElementById("result9").innerHTML = parseFloat((num1 * num11 * picu).toFixed(2));
            document.getElementById("result10").innerHTML = parseFloat((num1 * num12 * picu).toFixed(2));
            document.getElementById("result11").innerHTML = parseFloat((num1 * num13 * picu).toFixed(2));
            document.getElementById("result12").innerHTML = parseFloat((num1 * num14 * picu).toFixed(2));
            document.getElementById("result13").innerHTML = parseFloat((num1 * num15 * picu).toFixed(2));
            document.getElementById("result14").innerHTML = parseFloat((num1 * num16 * picu).toFixed(2));
            document.getElementById("result15").innerHTML = parseFloat((num1 * num17 * picu).toFixed(2));
            document.getElementById("result16").innerHTML = parseFloat((num1 * num18 * picu).toFixed(2));
            document.getElementById("result17").innerHTML = parseFloat((num1 * num19 * picu).toFixed(2));
            document.getElementById("result18").innerHTML = parseFloat((num1 * num20 * picu).toFixed(2));
            document.getElementById("result19").innerHTML = parseFloat((num1 * num21 * picu).toFixed(2));
            document.getElementById("result20").innerHTML = parseFloat((num1 * num22 * picu).toFixed(2));
            document.getElementById("result21").innerHTML = parseFloat((num1 * num23 * picu).toFixed(2));
            document.getElementById("result22").innerHTML = parseFloat((num1 * num24 * picu).toFixed(2));
            document.getElementById("result23").innerHTML = parseFloat((num1 * num25 * picu).toFixed(2));
            document.getElementById("result24").innerHTML = parseFloat((num1 * num26 * picu).toFixed(2));
            document.getElementById("result25").innerHTML = parseFloat((num1 * num27 * picu).toFixed(2));
            document.getElementById("result26").innerHTML = parseFloat((num1 * num28 * picu).toFixed(2));
            document.getElementById("result27").innerHTML = parseFloat((num1 * num29 * picu).toFixed(2));
            document.getElementById("result28").innerHTML = parseFloat((num1 * num30 * picu).toFixed(2));
            document.getElementById("result29").innerHTML = parseFloat((num1 * num31 * picu).toFixed(2));
            document.getElementById("result30").innerHTML = parseFloat((num1 * num32 * picu).toFixed(2));
            document.getElementById("result31").innerHTML = parseFloat((num1 * num33 * picu).toFixed(2));
            document.getElementById("result32").innerHTML = parseFloat((num1 * num34 * picu).toFixed(2));
            document.getElementById("result33").innerHTML = parseFloat((num1 * num35 * picu).toFixed(2));
            document.getElementById("result34").innerHTML = parseFloat((num1 * num36 * picu).toFixed(2));
            document.getElementById("result35").innerHTML = parseFloat((num1 * num37 * picu).toFixed(2));
            document.getElementById("result36").innerHTML = parseFloat((num1 * num38 * picu).toFixed(2));
            document.getElementById("result37").innerHTML = parseFloat((num1 * num39 * picu).toFixed(2));
            document.getElementById("result38").innerHTML = parseFloat((num1 * num40 * picu).toFixed(2));
            document.getElementById("result39").innerHTML = parseFloat((num1 * num41 * picu).toFixed(2));
            document.getElementById("result40").innerHTML = parseFloat((num1 * num42 * picu).toFixed(2));
            document.getElementById("result41").innerHTML = parseFloat((num1 * num43 * picu).toFixed(2));
            document.getElementById("result42").innerHTML = parseFloat((num1 * num44 * picu).toFixed(2));
            document.getElementById("result43").innerHTML = parseFloat((num1 * num45 * picu).toFixed(2));
            document.getElementById("result44").innerHTML = parseFloat((num1 * num46 * picu).toFixed(2));
            document.getElementById("result45").innerHTML = parseFloat((num1 * num47 * picu).toFixed(2));
            document.getElementById("result46").innerHTML = parseFloat((num1 * num48 * picu).toFixed(2));
            document.getElementById("result47").innerHTML = parseFloat((num1 * num49 * picu).toFixed(2));
            document.getElementById("result48").innerHTML = parseFloat((num1 * num50 * picu).toFixed(2));
            document.getElementById("result49").innerHTML = parseFloat((num1 * num51 * picu).toFixed(2));
            document.getElementById("result50").innerHTML = parseFloat((num1 * num52 * picu).toFixed(2));
            document.getElementById("result51").innerHTML = parseFloat((num1 * num53 * picu).toFixed(2));
            document.getElementById("result52").innerHTML = parseFloat((num1 * num54 * picu).toFixed(2));
            document.getElementById("result53").innerHTML = parseFloat((num1 * num55 * picu).toFixed(2));
            document.getElementById("result54").innerHTML = parseFloat((num1 * num56 * picu).toFixed(2));
            document.getElementById("result55").innerHTML = parseFloat((num1 * num57 * picu).toFixed(2));
            document.getElementById("result56").innerHTML = parseFloat((num1 * num58 * picu).toFixed(2));
            document.getElementById("result57").innerHTML = parseFloat((num1 * num59 * picu).toFixed(2));
            document.getElementById("result58").innerHTML = parseFloat((num1 * num60 * picu).toFixed(2));
            document.getElementById("result59").innerHTML = parseFloat((num1 * num61 * picu).toFixed(2));
            document.getElementById("result60").innerHTML = parseFloat((num1 * num62 * picu).toFixed(2));
            document.getElementById("result61").innerHTML = parseFloat((num1 * num63 * picu).toFixed(2));
            document.getElementById("result62").innerHTML = parseFloat((num1 * num64 * picu).toFixed(2));
            document.getElementById("result63").innerHTML = parseFloat((num1 * num65 * picu).toFixed(2));
            document.getElementById("result64").innerHTML = parseFloat((num1 * num66 * picu).toFixed(2));
            document.getElementById("result65").innerHTML = parseFloat((num1 * num67 * picu).toFixed(2));
            document.getElementById("result66").innerHTML = parseFloat((num1 * num68 * picu).toFixed(2));
            document.getElementById("result67").innerHTML = parseFloat((num1 * num69 * picu).toFixed(2));
            document.getElementById("result68").innerHTML = parseFloat((num1 * num70 * picu).toFixed(2));
            document.getElementById("result69").innerHTML = parseFloat((num1 * num71 * picu).toFixed(2));
            document.getElementById("result70").innerHTML = parseFloat((num1 * num72 * picu).toFixed(2));
            document.getElementById("result71").innerHTML = parseFloat((num1 * num73 * picu).toFixed(2));
            document.getElementById("result72").innerHTML = parseFloat((num1 * num74 * picu).toFixed(2));
            document.getElementById("result73").innerHTML = parseFloat((num1 * num75 * picu).toFixed(2));
            document.getElementById("result74").innerHTML = parseFloat((num1 * num76 * picu).toFixed(2));
            document.getElementById("result75").innerHTML = parseFloat((num1 * num77 * picu).toFixed(2));
            document.getElementById("result76").innerHTML = parseFloat((num1 * num78 * picu).toFixed(2));
            document.getElementById("result77").innerHTML = parseFloat((num1 * num79 * picu).toFixed(2));
            document.getElementById("result78").innerHTML = parseFloat((num1 * num80 * picu).toFixed(2));
            document.getElementById("result79").innerHTML = parseFloat((num1 * num81 * picu).toFixed(2));
            document.getElementById("result80").innerHTML = parseFloat((num1 * num82 * picu).toFixed(2));
            document.getElementById("result81").innerHTML = parseFloat((num1 * num83 * picu).toFixed(2));
            document.getElementById("result82").innerHTML = parseFloat((num1 * num84 * picu).toFixed(2));
            document.getElementById("result83").innerHTML = parseFloat((num1 * num85 * picu).toFixed(2));
            document.getElementById("result84").innerHTML = parseFloat((num1 * num86 * picu).toFixed(2));
            document.getElementById("result85").innerHTML = parseFloat((num1 * num87 * picu).toFixed(2));
            document.getElementById("result86").innerHTML = parseFloat((num1 * num88 * picu).toFixed(2));
            document.getElementById("result87").innerHTML = parseFloat((num1 * num89 * picu).toFixed(2));
            document.getElementById("result88").innerHTML = parseFloat((num1 * num90 * picu).toFixed(2));
            document.getElementById("result89").innerHTML = parseFloat((num1 * num91 * picu).toFixed(2));
            document.getElementById("result90").innerHTML = parseFloat((num1 * num92 * picu).toFixed(2));
            document.getElementById("result91").innerHTML = parseFloat((num1 * num93 * picu).toFixed(2));
            document.getElementById("result92").innerHTML = parseFloat((num1 * num94 * picu).toFixed(2));
            document.getElementById("result93").innerHTML = parseFloat((num1 * num95 * picu).toFixed(2));
            document.getElementById("result94").innerHTML = parseFloat((num1 * num96 * picu).toFixed(2));
            document.getElementById("result95").innerHTML = parseFloat((num1 * num97 * picu).toFixed(2));
            document.getElementById("result96").innerHTML = parseFloat((num1 * num98 * picu).toFixed(2));
            document.getElementById("result97").innerHTML = parseFloat((num1 * num99 * picu).toFixed(2));
            document.getElementById("result98").innerHTML = parseFloat((num1 * num100 * picu).toFixed(2));
            document.getElementById("result99").innerHTML = parseFloat((num1 * num101 * picu).toFixed(2));
            document.getElementById("result100").innerHTML = parseFloat((num1 * num102 * picu).toFixed(2));
            document.getElementById("result101").innerHTML = parseFloat((num1 * num103 * picu).toFixed(2));
            document.getElementById("result102").innerHTML = parseFloat((num1 * num104 * picu).toFixed(2));
            document.getElementById("result103").innerHTML = parseFloat((num1 * num105 * picu).toFixed(2));
            document.getElementById("result104").innerHTML = parseFloat((num1 * num106 * picu).toFixed(2));
            document.getElementById("result105").innerHTML = parseFloat((num1 * num107 * picu).toFixed(2));
            document.getElementById("result106").innerHTML = parseFloat((num1 * num108 * picu).toFixed(2));
            document.getElementById("result107").innerHTML = parseFloat((num1 * num109 * picu).toFixed(2));
            document.getElementById("result108").innerHTML = parseFloat((num1 * num110 * picu).toFixed(2));
            document.getElementById("result109").innerHTML = parseFloat((num1 * num111 * picu).toFixed(2));
            document.getElementById("result110").innerHTML = parseFloat((num1 * num112 * picu).toFixed(2));
            document.getElementById("result111").innerHTML = parseFloat((num1 * num113 * picu).toFixed(2));
            document.getElementById("result112").innerHTML = parseFloat((num1 * num114 * picu).toFixed(2));
            document.getElementById("result113").innerHTML = parseFloat((num1 * num115 * picu).toFixed(2));
            document.getElementById("result114").innerHTML = parseFloat((num1 * num116 * picu).toFixed(2));
            document.getElementById("result115").innerHTML = parseFloat((num1 * num117 * picu).toFixed(2));
            document.getElementById("result116").innerHTML = parseFloat((num1 * num118 * picu).toFixed(2));
            document.getElementById("result117").innerHTML = parseFloat((num1 * num119 * picu).toFixed(2));
            document.getElementById("result118").innerHTML = parseFloat((num1 * num120 * picu).toFixed(2));
            document.getElementById("result119").innerHTML = parseFloat((num1 * num121 * picu).toFixed(2));
            document.getElementById("result120").innerHTML = parseFloat((num1 * num122 * picu).toFixed(2));
            document.getElementById("result121").innerHTML = parseFloat((num1 * num123 * picu).toFixed(2));
            document.getElementById("result122").innerHTML = parseFloat((num1 * num124 * picu).toFixed(2));
            document.getElementById("result123").innerHTML = parseFloat((num1 * num125 * picu).toFixed(2));
            document.getElementById("result124").innerHTML = parseFloat((num1 * num126 * picu).toFixed(2));
            document.getElementById("result125").innerHTML = parseFloat((num1 * num127 * picu).toFixed(2));
            document.getElementById("result126").innerHTML = parseFloat((num1 * num128 * picu).toFixed(2));
            document.getElementById("result127").innerHTML = parseFloat((num1 * num129 * picu).toFixed(2));
            document.getElementById("result128").innerHTML = parseFloat((num1 * num130 * picu).toFixed(2));
            document.getElementById("result129").innerHTML = parseFloat((num1 * num131 * picu).toFixed(2));
            document.getElementById("result130").innerHTML = parseFloat((num1 * num132 * picu).toFixed(2));
            document.getElementById("result131").innerHTML = parseFloat((num1 * num133 * picu).toFixed(2));
            document.getElementById("result132").innerHTML = parseFloat((num1 * num134 * picu).toFixed(2));
            document.getElementById("result133").innerHTML = parseFloat((num1 * num135 * picu).toFixed(2));
            //document.getElementById("result134").innerHTML = num1 * num112 * picu;
            //document.getElementById("result135").innerHTML = num1 * num112 * picu;
            //document.getElementById("result136").innerHTML = num1 * num112 * picu;
            //document.getElementById("result137").innerHTML = num1 * num112 * picu;
            //document.getElementById("result138").innerHTML = num1 * num112 * picu;
            //document.getElementById("result139").innerHTML = num1 * num112 * picu;
            //document.getElementById("result140").innerHTML = num1 * num112 * picu;
            //document.getElementById("result141").innerHTML = num1 * num112 * picu;
            //document.getElementById("result142").innerHTML = num1 * num112 * picu;
            //document.getElementById("result143").innerHTML = num1 * num112 * picu;
            //document.getElementById("result144").innerHTML = num1 * num112 * picu;
            //document.getElementById("result145").innerHTML = num1 * num112 * picu;

        }</script>
</body>
</html>

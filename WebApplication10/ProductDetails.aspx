<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WebApplication10.ProductDetails" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="multiply.js"></script>
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
      <a><input type="text" class="form-control" id="ammounting" aria-describedby="ammountingg" placeholder="Enter ammount in grams." style="width:200px;position:relative;left:230px;bottom:40px">
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
            <td class="auto-style13"><asp:Label ID ="Label40" runat ="server"></asp:Label></td>   
               <td class="auto-style11"><span id = "result51"></span></td>  
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
</body>
</html>

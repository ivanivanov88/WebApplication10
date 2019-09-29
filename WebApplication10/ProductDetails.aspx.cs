using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.HtmlControls;
using System.Windows.Input;
using Microsoft.AspNet.FriendlyUrls;
namespace WebApplication10
{

    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                         
            if (!IsPostBack)
            {
                string productId = Page.RouteData.Values["NDB_No"] as string;
                //string productId = Request.QueryString["NDB_No"];
                if (productId == null)
                {
                    Response.Redirect("Home.aspx");
                }
                string cs = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spGetProductDetailsByID", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter parameter = new SqlParameter("@ID", productId);
                    cmd.Parameters.Add(parameter);
                    con.Open();
                    
                    using (SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection))
                    {
                        while (rdr.Read())
                        {
                            if (rdr["Shrt_Desc"] != null && rdr["Shrt_Desc"] != DBNull.Value)
                            {
                                Label1.Text = rdr["Shrt_Desc"].ToString();
                                string a = Label1.Text;
                            }
                            else { Label1.Text = "No Measurement"; }
                            if (rdr["Water"] != null && rdr["Water"] != DBNull.Value)
                            {
                                Label2.Text = rdr["Water"].ToString();
                            }
                            else { Label2.Text = "No Measurement"; }
                            if (rdr["Energ_Kcal"] != null && rdr["Energ_Kcal"] != DBNull.Value)
                            {
                                Label3.Text = rdr["Energ_Kcal"] .ToString();
                            }
                            else { Label3.Text = "No Measurement"; }
                            if (rdr["Protein"] != null && rdr["Protein"] != DBNull.Value)
                            {
                                Label00.Text = rdr["Protein"] .ToString();
                            }
                            else { Label00.Text = "No Measurement"; }
                            if (rdr["Lipid_Tot"] != null && rdr["Lipid_Tot"] != DBNull.Value)
                            {
                                Label4.Text = rdr["Lipid_Tot"] .ToString();
                            }
                            else { Label4.Text = "No Measurement"; }
                            if (rdr["Ash"] != null && rdr["Ash"] != DBNull.Value)
                            {
                                Label5.Text = rdr["Ash"] .ToString();
                            }
                            else { Label5.Text = "No Measurement"; }
                            //if (rdr["Shrt_Desc"] != null && rdr["Shrt_Desc"] != DBNull.Value)
                            //{
                            //    Label6.Text = rdr["Shrt_Desc"] .ToString();
                            //}
                            //else { Label6.Text = "No Measurement"; }
                            if (rdr["Carbohydrt"] != null && rdr["Carbohydrt"] != DBNull.Value)
                            {
                                Label7.Text = rdr["Carbohydrt"] .ToString();
                            }
                            else { Label7.Text = "No Measurement"; }
                            if (rdr["Fiber_TD"] != null && rdr["Fiber_TD"] != DBNull.Value)
                            {
                                Label8.Text = rdr["Fiber_TD"] .ToString();
                            }
                            else { Label8.Text = "No Measurement"; }
                            if (rdr["Sugar_Tot"] != null && rdr["Sugar_Tot"] != DBNull.Value)
                            {
                                Label9.Text = rdr["Sugar_Tot"] .ToString();
                            }
                            else { Label9.Text = "No Measurement"; }
                            if (rdr["Calcium"] != null && rdr["Calcium"] != DBNull.Value)
                            {
                                Label10.Text = rdr["Calcium"] .ToString();
                            }
                            else { Label10.Text = "No Measurement"; }
                            if (rdr["Iron"] != null && rdr["Iron"] != DBNull.Value)
                            {
                                Label11.Text = rdr["Iron"] .ToString();
                            }
                            else { Label11.Text = "No Measurement"; }
                            if (rdr["Magnesium"] != null && rdr["Magnesium"] != DBNull.Value)
                            {
                                Label12.Text = rdr["Magnesium"] .ToString();
                            }
                            else { Label12.Text = "No Measurement"; }
                            if (rdr["Phosphorus"] != null && rdr["Phosphorus"] != DBNull.Value)
                            {
                                Label13.Text = rdr["Phosphorus"] .ToString();
                            }
                            else { Label13.Text = "No Measurement"; }
                            if (rdr["Potassium"] != null && rdr["Potassium"] != DBNull.Value)
                            {
                                Label14.Text = rdr["Potassium"] .ToString();
                            }
                            else { Label14.Text = "No Measurement"; }
                            if (rdr["Sodium"] != null && rdr["Sodium"] != DBNull.Value)
                            {
                                Label15.Text = rdr["Sodium"] .ToString();
                            }
                            else { Label15.Text = "No Measurement"; }
                            if (rdr["ZInc"] != null && rdr["ZInc"] != DBNull.Value)
                            {
                                Label16.Text = rdr["ZInc"] .ToString();
                            }
                            else { Label16.Text = "No Measurement"; }
                            if (rdr["Copper"] != null && rdr["Copper"] != DBNull.Value)
                            {
                                Label17.Text = rdr["Copper"] .ToString();
                            }
                            else { Label17.Text = "No Measurement"; }
                            if (rdr["Manganese"] != null && rdr["Manganese"] != DBNull.Value)
                            {
                                Label18.Text = rdr["Manganese"] .ToString();
                            }
                            else { Label18.Text = "No Measurement"; }
                            if (rdr["Selenium"] != null && rdr["Selenium"] != DBNull.Value)
                            {
                                Label19.Text = rdr["Selenium"] .ToString();
                            }
                            else { Label19.Text = "No Measurement"; }
                            if (rdr["Vit_C"] != null && rdr["Vit_C"] != DBNull.Value)
                            {
                                Label20.Text = rdr["Vit_C"] .ToString();
                            }
                            else { Label20.Text = "No Measurement"; }
                            if (rdr["Thiamin"] != null && rdr["Thiamin"] != DBNull.Value)
                            {
                                Label21.Text = rdr["Thiamin"] .ToString();
                            }
                            else { Label21.Text = "No Measurement"; }
                            if (rdr["Ribolfavin"] != null && rdr["Ribolfavin"] != DBNull.Value)
                            {
                                Label22.Text = rdr["Ribolfavin"] .ToString();
                            }
                            else { Label22.Text = "No Measurement"; }
                            if (rdr["Niacin"] != null && rdr["Niacin"] != DBNull.Value)
                            {
                                Label23.Text = rdr["Niacin"] .ToString();
                            }
                            else { Label23.Text = "No Measurement"; }
                            if (rdr["Panto_Acid"] != null && rdr["Panto_Acid"] != DBNull.Value)
                            {
                                Label24.Text = rdr["Panto_Acid"] .ToString();
                            }
                            else { Label24.Text = "No Measurement"; }
                            if (rdr["Vit_B6"] != null && rdr["Vit_B6"] != DBNull.Value)
                            {
                                Label25.Text = rdr["Vit_B6"] .ToString();
                            }
                            else { Label25.Text = "No Measurement"; }
                            if (rdr["Folate_Tot"] != null && rdr["Folate_Tot"] != DBNull.Value)
                            {
                                Label26.Text = rdr["Folate_Tot"] .ToString();
                            }
                            else { Label26.Text = "No Measurement"; }
                            if (rdr["Folic_Acid"] != null && rdr["Folic_Acid"] != DBNull.Value)
                            {
                                Label27.Text = rdr["Folic_Acid"] .ToString();
                            }
                            else { Label27.Text = "No Measurement"; }
                            if (rdr["Food_Folate"] != null && rdr["Food_Folate"] != DBNull.Value)
                            {
                                Label28.Text = rdr["Food_Folate"] .ToString();
                            }
                            else { Label28.Text = "No Measurement"; }
                            if (rdr["Folate_DFE"] != null && rdr["Folate_DFE"] != DBNull.Value)
                            {
                                Label29.Text = rdr["Folate_DFE"].ToString();
                            }
                            else { Label29.Text = "No Measurement"; }
                            if (rdr["Choline_Tot"] != null && rdr["Choline_Tot"] != DBNull.Value)
                            {
                                Label30.Text = rdr["Choline_Tot"] .ToString();
                            }
                            else { Label30.Text = "No Measurement"; }
                            if (rdr["Vit_B12"] != null && rdr["Vit_B12"] != DBNull.Value)
                            {
                                Label31.Text = rdr["Vit_B12"] .ToString();
                            }
                            else { Label31.Text = "No Measurement"; }
                            if (rdr["Vit_A_IU"] != null && rdr["Vit_A_IU"] != DBNull.Value)
                            {
                                Label32.Text = rdr["Vit_A_IU"].ToString();
                            }
                            else { Label32.Text = "No Measurement"; }
                            if (rdr["Vit_A_RAE"] != null && rdr["Vit_A_RAE"] != DBNull.Value)
                            {
                                Label33.Text = rdr["Vit_A_RAE"].ToString();
                            }
                            else { Label33.Text = "No Measurement"; }
                            if (rdr["Retinol"] != null && rdr["Retinol"] != DBNull.Value)
                            {
                                Label34.Text = rdr["Retinol"] .ToString();
                            }
                            else { Label34.Text = "No Measurement"; }
                            if (rdr["Alpha_Carot"] != null && rdr["Alpha_Carot"] != DBNull.Value)
                            {
                                Label35.Text = rdr["Alpha_Carot"] .ToString();
                            }
                            else { Label35.Text = "No Measurement"; }
                            if (rdr["Beta_Carot"] != null && rdr["Beta_Carot"] != DBNull.Value)
                            {
                                Label36.Text = rdr["Beta_Carot"] .ToString();
                            }
                            else { Label36.Text = "No Measurement"; }
                            if (rdr["Beta_Crypt"] != null && rdr["Beta_Crypt"] != DBNull.Value)
                            {
                                Label37.Text = rdr["Beta_Crypt"] .ToString();
                            }
                            else { Label37.Text = "No Measurement"; }
                            if (rdr["Lycopene"] != null && rdr["Lycopene"] != DBNull.Value)
                            {
                                Label38.Text = rdr["Lycopene"] .ToString();
                            }
                            else { Label38.Text = "No Measurement"; }
                            if (rdr["LutZea"] != null && rdr["LutZea"] != DBNull.Value)
                            {
                                Label39.Text = rdr["LutZea"] .ToString();
                            }
                            else { Label39.Text = "No Measurement"; }
                            if (rdr["Vit_E"] != null && rdr["Vit_E"] != DBNull.Value)
                            {
                                Label40.Text = rdr["Vit_E"] .ToString();
                            }
                            else { Label40.Text = "No Measurement"; }
                            if (rdr["Vit_K"] != null && rdr["Vit_K"] != DBNull.Value)
                            {
                                Label41.Text = rdr["Vit_K"] .ToString();
                            }
                            else { Label41.Text = "No Measurement"; }
                            if (rdr["FA_SAt"] != null && rdr["FA_SAt"] != DBNull.Value)
                            {
                                Label42.Text = rdr["FA_SAt"] .ToString();
                            }
                            else { Label42.Text = "No Measurement"; }
                            if (rdr["FA_Mono"] != null && rdr["FA_Mono"] != DBNull.Value)
                            {
                                Label43.Text = rdr["FA_Mono"] .ToString();
                            }
                            else { Label43.Text = "No Measurement"; }
                            if (rdr["FA_Poly"] != null && rdr["FA_Poly"] != DBNull.Value)
                            {
                                Label44.Text = rdr["FA_Poly"] .ToString();
                            }
                            else { Label44.Text = "No Measurement"; }
                            if (rdr["Cholestrl"] != null && rdr["Cholestrl"] != DBNull.Value)
                            {
                                Label45.Text = rdr["Cholestrl"] .ToString();
                            }
                            else { Label45.Text = "No Measurement"; }
                            //Label48.Text = rdr["GmWt_2"].ToString();
                            //Label49.Text = rdr["GmWt_Desc2"].ToString();



                        }
                    }
                }
            }
            string productIb = Page.RouteData.Values["NDB_No"] as string;
            if (productIb == null)
            {
                Response.Redirect("Home.aspx");
            }
            string cz = ConfigurationManager.ConnectionStrings["connectionStr2"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cz))
            {
                SqlCommand cmd = new SqlCommand("spSearchForOtherNutrients", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter parameter = new SqlParameter("@IB", productIb);
                cmd.Parameters.Add(parameter);
                con.Open();
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                   while (rdr.Read())
                    {
                        if (rdr["209"] != null && rdr["209"] != DBNull.Value)
                        {
                            Label50.Text = rdr["209"] .ToString(); //Starch
                        }
                        else { Label50.Text = "No Measurement"; }
                        if (rdr["210"] != null && rdr["210"] != DBNull.Value)
                        {
                            Label51.Text = rdr["210"] .ToString(); //Sucrose
                        }
                        else { Label51.Text = "No Measurement"; }
                        if (rdr["211"] != null && rdr["211"] != DBNull.Value)
                        {
                            Label52.Text = rdr["211"] .ToString(); //Glucose
                        }
                        else { Label52.Text = "No Measurement"; }
                        if (rdr["212"] != null && rdr["212"] != DBNull.Value)
                        {
                            Label53.Text = rdr["212"] .ToString(); //Fructose
                        }
                        else { Label53.Text = "No Measurement"; }
                        if (rdr["213"] != null && rdr["213"] != DBNull.Value)
                        {
                            Label54.Text = rdr["213"] .ToString(); //Lactose
                        }
                        else { Label54.Text = "No Measurement"; }
                        if (rdr["214"] != null && rdr["214"] != DBNull.Value)
                        {
                            Label55.Text = rdr["214"] .ToString(); //Maltose
                        }
                        else { Label55.Text = "No Measurement"; }
                        if (rdr["221"] != null && rdr["221"] != DBNull.Value)
                        {
                            Label56.Text = rdr["221"] .ToString(); //Alcohol, ethyl
                        }
                        else { Label56.Text = "No Measurement"; }
                        if (rdr["263"] != null && rdr["263"] != DBNull.Value)
                        {
                            Label57.Text = rdr["263"] .ToString(); //Theobromine
                        }
                        else { Label57.Text = "No Measurement"; }
                        if (rdr["262"] != null && rdr["262"] != DBNull.Value)
                        {
                            Label58.Text = rdr["262"] .ToString(); //Caffeine
                        }
                        else { Label58.Text = "No Measurement"; }
                        if (rdr["268"] != null && rdr["268"] != DBNull.Value)
                        {
                            Label59.Text = rdr["268"] .ToString(); //Energy
                        }
                        else { Label59.Text = "No Measurement"; }
                        if (rdr["287"] != null && rdr["287"] != DBNull.Value)
                        {
                            Label61.Text = rdr["287"] .ToString(); //Galactose
                        }
                        else { Label61.Text = "No Measurement"; }
                        if (rdr["324"] != null && rdr["324"] != DBNull.Value)
                        {
                            Label62.Text = rdr["324"].ToString(); //Vitamin D
                        }
                        else { Label62.Text = "No Measurement"; }
                        // if (rdr["334"] != null && rdr["334"] != DBNull.Value)
                        // {
                        //Label63.Text = rdr["334"].ToString(); //Cryptoxanthin, beta
                        // }
                        // else { Label63.Text = "No Measurement"; }
                        if (rdr["454"] != null && rdr["454"] != DBNull.Value)
                        {
                            Label64.Text = rdr["454"] .ToString(); //Betaine
                        }
                        else { Label64.Text = "No Measurement"; }
                        if (rdr["501"] != null && rdr["501"] != DBNull.Value)
                        {
                            Label65.Text = rdr["501"] .ToString(); //Tryptophan
                        }
                        else { Label65.Text = "No Measurement"; }
                        if (rdr["502"] != null && rdr["502"] != DBNull.Value)
                        {
                            Label66.Text = rdr["502"] .ToString(); //Threonine
                        }
                        else { Label66.Text = "No Measurement"; }
                        if (rdr["503"] != null && rdr["503"] != DBNull.Value)
                        {
                            Label67.Text = rdr["503"] .ToString(); //Isoleucine
                        }
                        else { Label67.Text = "No Measurement"; }
                        if (rdr["504"] != null && rdr["504"] != DBNull.Value)
                        {
                            Label68.Text = rdr["504"] .ToString(); //Leucine
                        }
                        else { Label68.Text = "No Measurement"; }
                        if (rdr["505"] != null && rdr["505"] != DBNull.Value)
                        {
                            Label69.Text = rdr["505"] .ToString(); //Lysine
                        }
                        else { Label69.Text = "No Measurement"; }
                        if (rdr["506"] != null && rdr["506"] != DBNull.Value)
                        {
                            Label70.Text = rdr["506"] .ToString(); //Methionine
                        }
                        else { Label70.Text = "No Measurement"; }
                        if (rdr["507"] != null && rdr["507"] != DBNull.Value)
                        {
                            Label71.Text = rdr["507"] .ToString(); //Cystine
                        }
                        else { Label71.Text = "No Measurement"; }
                        if (rdr["508"] != null && rdr["508"] != DBNull.Value)
                        {
                            Label72.Text = rdr["508"] .ToString(); //Phenylalanine
                        }
                        else { Label72.Text = "No Measurement"; }
                        if (rdr["509"] != null && rdr["509"] != DBNull.Value)
                        {
                            Label73.Text = rdr["509"] .ToString(); //Tyrosine
                        }
                        else { Label73.Text = "No Measurement"; }
                        if (rdr["510"] != null && rdr["510"] != DBNull.Value)
                        {
                            Label74.Text = rdr["510"] .ToString(); //Valine
                        }
                        else { Label74.Text = "No Measurement"; }
                        if (rdr["511"] != null && rdr["511"] != DBNull.Value)
                        {
                            Label75.Text = rdr["511"] .ToString(); //Arginine
                        }
                        else { Label75.Text = "No Measurement"; }
                        if (rdr["512"] != null && rdr["512"] != DBNull.Value)
                        {
                            Label76.Text = rdr["512"] .ToString(); // Histidine
                        }
                        else { Label76.Text = "No Measurement"; }
                        if (rdr["513"] != null && rdr["513"] != DBNull.Value)
                        {
                            Label77.Text = rdr["513"] .ToString(); //Alanine
                        }
                        else { Label77.Text = "No Measurement"; }
                        if (rdr["514"] != null && rdr["514"] != DBNull.Value)
                        {
                            Label78.Text = rdr["514"] .ToString(); //Aspartic acid
                        }
                        else { Label78.Text = "No Measurement"; }
                        if (rdr["515"] != null && rdr["515"] != DBNull.Value)
                        {
                            Label79.Text = rdr["515"] .ToString(); //Glutamic acid
                        }
                        else { Label79.Text = "No Measurement"; }
                        if (rdr["516"] != null && rdr["516"] != DBNull.Value)
                        {
                            Label80.Text = rdr["516"] .ToString(); //Glycine
                        }
                        else { Label80.Text = "No Measurement"; }
                        if (rdr["517"] != null && rdr["517"] != DBNull.Value)
                        {
                            Label81.Text = rdr["517"] .ToString(); //Proline
                        }
                        else { Label81.Text = "No Measurement"; }
                        if (rdr["518"] != null && rdr["518"] != DBNull.Value)
                        {
                            Label82.Text = rdr["518"] .ToString(); //Serine
                        }
                        else { Label82.Text = "No Measurement"; }
                        if (rdr["521"] != null && rdr["521"] != DBNull.Value)
                        {
                            Label83.Text = rdr["521"] .ToString(); //Hydroxyproline
                        }
                        else { Label83.Text = "No Measurement"; }
                        if (rdr["573"] != null && rdr["573"] != DBNull.Value)
                        {
                            Label84.Text = rdr["573"] .ToString(); //Vitamin E, added
                        }
                        else { Label84.Text = "No Measurement"; }
                        if (rdr["578"] != null && rdr["578"] != DBNull.Value)
                        {
                            Label85.Text = rdr["578"] .ToString(); //Vitamin B-12, added
                        }
                        else { Label85.Text = "No Measurement"; }
                        if (rdr["607"] != null && rdr["607"] != DBNull.Value)
                        {
                            Label86.Text = rdr["607"] .ToString(); //Butyric acid(C4:0)
                        }
                        else { Label86.Text = "No Measurement"; }
                        if (rdr["608"] != null && rdr["608"] != DBNull.Value)
                        {
                            Label87.Text = rdr["608"] .ToString(); //Caproic acid(C6:0)
                        }
                        else { Label87.Text = "No Measurement"; }
                        if (rdr["609"] != null && rdr["609"] != DBNull.Value)
                        {
                            Label88.Text = rdr["609"] .ToString(); //Butyric acid(C8:0)
                        }
                        else { Label88.Text = "No Measurement"; }
                        if (rdr["610"] != null && rdr["610"] != DBNull.Value)
                        {
                            Label89.Text = rdr["610"] .ToString(); //Capric acid(C10:0)
                        }
                        else { Label89.Text = "No Measurement"; }
                        if (rdr["611"] != null && rdr["611"] != DBNull.Value)
                        {
                            Label90.Text = rdr["611"] .ToString(); //Lauric acid(C12:0)
                        }
                        else { Label90.Text = "No Measurement"; }
                        if (rdr["612"] != null && rdr["612"] != DBNull.Value)
                        {
                            Label91.Text = rdr["612"] .ToString(); //Myristic acid(C14:0)
                        }
                        else { Label91.Text = "No Measurement"; }
                        if (rdr["613"] != null && rdr["613"] != DBNull.Value)
                        {
                            Label92.Text = rdr["613"] .ToString(); //Palmitic acid(C16:0)
                        }
                        else { Label92.Text = "No Measurement"; }
                        if (rdr["614"] != null && rdr["614"] != DBNull.Value)
                        {
                            Label93.Text = rdr["614"] .ToString(); //Stearic acid(C18:0)
                        }
                        else { Label93.Text = "No Measurement"; }
                        if (rdr["615"] != null && rdr["615"] != DBNull.Value)
                        {
                            Label94.Text = rdr["615"] .ToString(); //Arachidic acid(C20:0)
                        }
                        else { Label94.Text = "No Measurement"; }
                        if (rdr["617"] != null && rdr["617"] != DBNull.Value)
                        {
                            Label95.Text = rdr["617"] .ToString(); //Oleic(C18:1 undifferentiated)
                        }
                        else { Label95.Text = "No Measurement"; }
                        if (rdr["618"] != null && rdr["618"] != DBNull.Value)
                        {
                            Label96.Text = rdr["618"] .ToString(); //Linoleic acid(C18:2 undifferentiated)
                        }
                        else { Label96.Text = "No Measurement"; }
                        if (rdr["619"] != null && rdr["619"] != DBNull.Value)
                        {
                            Label97.Text = rdr["619"] .ToString(); //α-Calendic acid(C18:3 undifferentiated)
                        }
                        else { Label97.Text = "No Measurement"; }
                        if (rdr["620"] != null && rdr["620"] != DBNull.Value)
                        {
                            Label98.Text = rdr["620"] .ToString(); //Eicosatetraenoic acid (ETA)(C20:4 undifferentiated)
                        }
                        else { Label98.Text = "No Measurement"; }
                        if (rdr["621"] != null && rdr["621"] != DBNull.Value)
                        {
                            Label99.Text = rdr["621"] .ToString(); //Docosahexaenoic acid (DHA, Cervonic acid)(C22:6 n-3)
                        }
                        else { Label99.Text = "No Measurement"; }
                        if (rdr["624"] != null && rdr["624"] != DBNull.Value)
                        {
                            Label100.Text = rdr["624"] .ToString(); //Behenic acid(C22:0)
                        }
                        else { Label100.Text = "No Measurement"; }
                        if (rdr["625"] != null && rdr["625"] != DBNull.Value)
                        {
                            Label101.Text = rdr["625"] .ToString(); //Myristoleic acid (C14:1)
                        }
                        else { Label101.Text = "No Measurement"; }
                        if (rdr["626"] != null && rdr["626"] != DBNull.Value)
                        {
                            Label102.Text = rdr["626"] .ToString(); //Palmitoleic acid(C16:1 undifferentiated)
                        }
                        else { Label102.Text = "No Measurement"; }
                        if (rdr["627"] != null && rdr["627"] != DBNull.Value)
                        {
                            Label103.Text = rdr["627"] .ToString(); //α-Parinaric acid(C18:4)
                        }
                        else { Label103.Text = "No Measurement"; }
                        if (rdr["628"] != null && rdr["628"] != DBNull.Value)
                        {
                            Label104.Text = rdr["628"] .ToString(); //Eicosenoic acid(C20:1)
                        }
                        else { Label104.Text = "No Measurement"; }
                        if (rdr["629"] != null && rdr["629"] != DBNull.Value)
                        {
                            Label105.Text = rdr["629"] .ToString(); //Eicosapentaenoic acid (EPA, Timnodonic acid)(C20:5 n-3)
                        }
                        else { Label105.Text = "No Measurement"; }
                        if (rdr["630"] != null && rdr["630"] != DBNull.Value)
                        {
                            Label106.Text = rdr["630"] .ToString(); //Erucic acid(C22:1 undifferentiated)
                        }
                        else { Label106.Text = "No Measurement"; }
                        if (rdr["631"] != null && rdr["631"] != DBNull.Value)
                        {
                            Label107.Text = rdr["631"] .ToString(); //Docosapentaenoic acid (C22:5 n-3)
                        }
                        else { Label107.Text = "No Measurement"; }
                        if (rdr["636"] != null && rdr["636"] != DBNull.Value)
                        {
                            Label108.Text = rdr["636"] .ToString(); //Phytosterols
                        }
                        else { Label108.Text = "No Measurement"; }
                        if (rdr["638"] != null && rdr["638"] != DBNull.Value)
                        {
                            Label109.Text = rdr["638"] .ToString(); //Stigmasterol
                        }
                        else { Label109.Text = "No Measurement"; }
                        if (rdr["639"] != null && rdr["639"] != DBNull.Value)
                        {
                            Label110.Text = rdr["639"] .ToString(); //Campesterol
                        }
                        else { Label110.Text = "No Measurement"; }
                        if (rdr["641"] != null && rdr["641"] != DBNull.Value)
                        {
                            Label111.Text = rdr["641"] .ToString(); //Beta-sitosterol
                        }
                        else { Label111.Text = "No Measurement"; }
                        if (rdr["652"] != null && rdr["652"] != DBNull.Value)
                        {
                            Label112.Text = rdr["652"] .ToString(); //Pentadecylic acid(C15:0)
                        }
                        else { Label112.Text = "No Measurement"; }
                        if (rdr["653"] != null && rdr["653"] != DBNull.Value)
                        {
                            Label113.Text = rdr["653"] .ToString(); //Margaric acid(C17:0)
                        }
                        else { Label113.Text = "No Measurement"; }
                        if (rdr["654"] != null && rdr["654"] != DBNull.Value)
                        {
                            Label114.Text = rdr["654"] .ToString(); //Lignoceric acid(C24:0)
                        }
                        else { Label114.Text = "No Measurement"; }
                        if (rdr["662"] != null && rdr["662"] != DBNull.Value)
                        {
                            Label115.Text = rdr["662"] .ToString(); //Sapienic acid(C16:1 t)
                        }
                        else { Label115.Text = "No Measurement"; }
                        if (rdr["663"] != null && rdr["663"] != DBNull.Value)
                        {
                            Label116.Text = rdr["663"] .ToString(); //Elaidic acid(C18:1 t)
                        }
                        else { Label116.Text = "No Measurement"; }
                        if (rdr["664"] != null && rdr["664"] != DBNull.Value)
                        {
                            Label117.Text = rdr["664"] .ToString(); //Erucic acid(C22:1 t)
                        }
                        else { Label117.Text = "No Measurement"; }
                        if (rdr["665"] != null && rdr["665"] != DBNull.Value)
                        {
                            Label118.Text = rdr["665"] .ToString(); //Linoleic acid(C18:2 t not further defined)
                        }
                        else { Label118.Text = "No Measurement"; }
                        if (rdr["666"] != null && rdr["666"] != DBNull.Value)
                        {
                            Label119.Text = rdr["666"] .ToString(); //Rumenic acid(C18:2 i)
                        }
                        else { Label119.Text = "No Measurement"; }
                        if (rdr["669"] != null && rdr["669"] != DBNull.Value)
                        {
                            Label120.Text = rdr["669"] .ToString(); //Linoelaidic acidC18:2 t,t)
                        }
                        else { Label120.Text = "No Measurement"; }
                        if (rdr["670"] != null && rdr["670"] != DBNull.Value)
                        {
                            Label121.Text = rdr["670"] .ToString(); //Linolelaidic acid(C18:2 CLAs)
                        }
                        else { Label121.Text = "No Measurement"; }
                        if (rdr["671"] != null && rdr["671"] != DBNull.Value)
                        {
                            Label122.Text = rdr["671"] .ToString(); //Nervonic acid(C24:1 c)
                        }
                        else { Label122.Text = "No Measurement"; }
                        if (rdr["672"] != null && rdr["672"] != DBNull.Value)
                        {
                            Label123.Text = rdr["672"] .ToString(); //Eicosadienoic acid(C20:2 n-6 c,c)
                        }
                        else { Label123.Text = "No Measurement"; }
                        if (rdr["673"] != null && rdr["673"] != DBNull.Value)
                        {
                            Label124.Text = rdr["673"] .ToString(); //Sapienic acid(C16:1 c)
                        }
                        else { Label124.Text = "No Measurement"; }
                        if (rdr["674"] != null && rdr["674"] != DBNull.Value)
                        {
                            Label125.Text = rdr["674"] .ToString(); //Vaccenic acid(C18:1 c)
                        }
                        else { Label125.Text = "No Measurement"; }
                        if (rdr["675"] != null && rdr["675"] != DBNull.Value)
                        {
                            Label126.Text = rdr["675"] .ToString(); //Linoleic acid(C18:2 n-6 c,c)
                        }
                        else { Label126.Text = "No Measurement"; }
                        if (rdr["676"] != null && rdr["676"] != DBNull.Value)
                        {
                            Label127.Text = rdr["676"] .ToString(); //Erucic acid(C22:1 c)
                        }
                        else { Label127.Text = "No Measurement"; }
                        if (rdr["685"] != null && rdr["685"] != DBNull.Value)
                        {
                            Label128.Text = rdr["685"] .ToString(); //gamma-Linolenic acid(C18:3 n-6 c,c,c)
                        }
                        else { Label128.Text = "No Measurement"; }
                        if (rdr["687"] != null && rdr["687"] != DBNull.Value)
                        {
                            Label129.Text = rdr["687"] .ToString(); //10-Heptadecenoic acid	(C17:1)
                        }
                        else { Label129.Text = "No Measurement"; }
                        if (rdr["689"] != null && rdr["689"] != DBNull.Value)
                        {
                            Label130.Text = rdr["689"] .ToString(); //20:3(C20:3 undifferentiated)
                        }
                        else { Label130.Text = "No Measurement"; }
                        if (rdr["693"] != null && rdr["693"] != DBNull.Value)
                        {
                            Label131.Text = rdr["693"] .ToString(); //Fatty acids, total trans-monoenoic
                        }
                        else { Label131.Text = "No Measurement"; }
                        if (rdr["695"] != null && rdr["695"] != DBNull.Value)
                        {
                            Label132.Text = rdr["695"] .ToString(); //Fatty acids, total trans-polyenoic
                        }
                        else { Label132.Text = "No Measurement"; }
                        if (rdr["696"] != null && rdr["696"] != DBNull.Value)
                        {
                            Label133.Text = rdr["696"] .ToString(); //Tridecylic acid(C13:0)
                        }
                        else { Label133.Text = "No Measurement"; }
                        if (rdr["697"] != null && rdr["697"] != DBNull.Value)
                        {
                            Label134.Text = rdr["697"] .ToString(); //10-Pentadecenoic acid(C15:1)
                        }
                        else { Label134.Text = "No Measurement"; }
                        if (rdr["851"] != null && rdr["851"] != DBNull.Value)
                        {
                            Label135.Text = rdr["851"] .ToString(); //Alpha-linolenic acid(C18:3 n-3 c,c,c)
                        }
                        else { Label135.Text = "No Measurement"; }
                        if (rdr["852"] != null && rdr["852"] != DBNull.Value)
                        {
                            Label136.Text = rdr["852"] .ToString(); //Eicosatrienoic acid(C20:3 n-3)
                        }
                        else { Label136.Text = "No Measurement"; }
                        if (rdr["853"] != null && rdr["853"] != DBNull.Value)
                        {
                            Label137.Text = rdr["853"] .ToString(); //Dihomogamma-linolenic acid(C20:3 n-6)
                        }
                        else { Label137.Text = "No Measurement"; }
                        if (rdr["855"] != null && rdr["855"] != DBNull.Value)
                        {
                            Label138.Text = rdr["855"] .ToString(); //Arachidonic acid (C20:4 n-6)
                        }
                        else { Label138.Text = "No Measurement"; }
                        if (rdr["856"] != null && rdr["856"] != DBNull.Value)
                        {
                            Label139.Text = rdr["856"] .ToString(); //Alpha-linolenic acid(C18:3 isomer)
                        }
                        else { Label139.Text = "No Measurement"; }
                        if (rdr["857"] != null && rdr["857"] != DBNull.Value)
                        {
                            Label140.Text = rdr["857"] .ToString(); //Heneicosapentaenoic acid(C21:5)
                        }
                        else { Label140.Text = "No Measurement"; }
                        if (rdr["858"] != null && rdr["858"] != DBNull.Value)
                        {
                            Label141.Text = rdr["858"] .ToString(); //Adrenic acid(C22:4)
                        }
                        else { Label141.Text = "No Measurement"; }

                    }
                }
                con.Close();
            }
            string productIc = Page.RouteData.Values["NDB_No"] as string;
            if (productIc == null)
                {
                    Response.Redirect("Home.aspx");
                }
                string cc = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;
                using (SqlConnection coc = new SqlConnection(cc))
                {
                    SqlCommand cmc = new SqlCommand("spSearchForName", coc);
                    cmc.CommandType = CommandType.StoredProcedure;
                    SqlParameter parameter1 = new SqlParameter("@IC", productIc);
                    cmc.Parameters.Add(parameter1);
                    coc.Open();
                    using (SqlDataReader rdc = cmc.ExecuteReader())
                    {

                        while (rdc.Read())
                        {
                        if (rdc["Long_Desc"] != null && rdc["Long_Desc"] != DBNull.Value)
                        {
                            Label150.Text = rdc["Long_Desc"].ToString(); //Starch
                            Page.Title = "Details for :" + Label150.Text;
                            MetaDescription ="This page shows the details of the nutritional value for :" + Label150.Text;
                        }
                        else { Label150.Text = "No Measurement"; }
                        //if (rdc["Long_Desc"] != null && rdc["Long_Desc"] != DBNull.Value)
                        //{
                        //    Label151.Text = rdc["Long_Desc"].ToString(); //Starch
                        //}
                        //else { Label51.Text = "No Measurement"; }
                        if (rdc["Long_Desc"] != null && rdc["Long_Desc"] != DBNull.Value)
                        {
                            Label152.Text = rdc["Long_Desc"].ToString(); //Starch
                           
                        }
                        else { Label152.Text = "No Measurement"; }
                        //if (rdc["Long_Desc"] != null && rdc["Long_Desc"] != DBNull.Value)
                        //{
                        //    Label155.Text = rdc["Long_Desc"].ToString(); //Starch

                        //}
                        //else { Label55.Text = "No Measurement"; }
                    }
                        
                    }
                coc.Close();
            }

          
        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
 
   
  }











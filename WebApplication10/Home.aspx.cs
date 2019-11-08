
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
using Newtonsoft.Json;
using System.Web.Services;
using Microsoft.AspNet.FriendlyUrls;
using System.Windows.Forms;

namespace WebApplication10
{

    public partial class Home : System.Web.UI.Page
    {
        [WebMethod(EnableSession = true)]
        protected void Page_Load(object food, EventArgs a)
        {
            MetaDescription = "A website dedicated to being a  nutritional database and a friendly interface with huge details about all kinds of foods, fruits, vegetables, ingredients, commercial foods, beverages, and drinks";
            if (!IsPostBack)
            {
                checkbox2.Checked = false;
                checkboxhidden.Value = "Search3";
                Session["param"] = "";           
                BindData();
                OrderDiv.Visible = false;
                CategoryDiv.Visible = false;
            }
        }
        private void BindData()
        {
            string constr = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                string myquery = "Search6";
                string myquery2 = "ListBox2";
                SqlCommand cmd = new SqlCommand(myquery, con);
                SqlCommand cmd2 = new SqlCommand(myquery2, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd2.CommandType = CommandType.StoredProcedure;
                con.Open();              
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
                DataSet ds = new DataSet();
                DataSet ds2 = new DataSet();
                sda.Fill(ds, "NutrDesc");
                sda2.Fill(ds2, "FdGrp_Desc");
                ListBox1.DataSource = ds;
                ListBox1.DataTextField = "NutrDesc";
                ListBox1.DataValueField = "Nutr_No";
                ListBox1.Visible = true;
                ListBox1.DataBind();
                Listbox2.DataSource= ds2;
                Listbox2.DataTextField = "FdGrp_Desc";
                Listbox2.DataValueField = "FdGrp_Cd";
                Listbox2.Visible = true;
                Listbox2.DataBind();
                con.Close();
            }
        }
        public string StringA { get; set; }

        public void Check_Clicked(object check, EventArgs c)
        {
            if (checkbox2.Checked && ListBox1.GetSelectedIndices().Count() == 0)
            {
                StringA = "Search4";
                Session["param"] = "Search4";
            }
            else if (checkbox2.Checked && ListBox1.GetSelectedIndices().Count() == 1)
            {
                StringA = "SelectandOrderByNutrient";
                Session["param"] = "";
            }
            else
            {
                StringA = "Search3";
                Session["param"] = "";

            }
            checkboxhidden.Value = StringA;
        }
        protected void ListBox1_SelectedIndexChanged(object sender, System.EventArgs e)
        {

            TextBoxList.Text = ListBox1.SelectedItem.Text;
            OrderDiv.Visible = true;
        }       
        protected void Dropdown_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            TextBox2.Text = Listbox2.SelectedItem.Text;
            CategoryDiv.Visible = true;
        }       
            protected void ClearFilter(object sender, EventArgs e)
        {
            ListBox1.SelectedIndex = -1;
            TextBoxList.Text = string.Empty;
            OrderDiv.Visible = false;
        }
        protected void ClearFilter2(object sender, EventArgs e)
        {
            Listbox2.SelectedIndex = -1;
            TextBox2.Text = string.Empty;
            CategoryDiv.Visible = false;
        }
        protected void BtnSearch_Click(object sender, EventArgs e)
        {
           if(inputLong_Desc.Value.Length == 0 && checkbox2.Checked == false && Listbox2.SelectedIndex <= 0 && ListBox1.GetSelectedIndices().Count() == 0)
            {
                 Response.Redirect("Home.aspx");
            }
           else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == false && Listbox2.SelectedIndex >= 1 && ListBox1.GetSelectedIndices().Count() == 1)         
           {
                checkboxhidden.Value = "SelectCategoryWithListboxWOLong_desc";
           }               
           else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == false && Listbox2.SelectedIndex >= 1 && ListBox1.GetSelectedIndices().Count() == 0)
           {
                checkboxhidden.Value = "[dbo].[SelectCategoryWOAnything]";
           }                            
           else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && Listbox2.SelectedIndex >= 1 && ListBox1.GetSelectedIndices().Count() == 1)
            {
                
                checkboxhidden.Value = "SelectCategoryWithEverythingWoLong_desc";
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && Listbox2.SelectedIndex >= 1 && ListBox1.GetSelectedIndices().Count() == 0)
            {
                 checkboxhidden.Value = "SelectCategoryWithCheckboxWoLong_descAndListbox";
            }
            
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && ListBox1.GetSelectedIndices().Count() == 1 && Listbox2.SelectedIndex >= 1 )
            {
               
                    checkboxhidden.Value = "SelectCategoryWoLong_descAndListbox2";
             }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && ListBox1.GetSelectedIndices().Count() == 1 && Listbox2.SelectedIndex <= 0)
            {
                    checkboxhidden.Value = "SelectCategoryWoLong_descAndListbox2";
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && Listbox2.SelectedIndex <= 0 && ListBox1.GetSelectedIndices().Count() == 1)
            {
               
                    checkboxhidden.Value = "SelectCategoryWoLong_descAndListbox2";
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && Listbox2.SelectedIndex <= 0 && ListBox1.GetSelectedIndices().Count() == 0)
            {
                    checkboxhidden.Value = "SelectOnlyWithCheckbox";
            }
            
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false && Listbox2.SelectedIndex >= 1 && inputLong_Desc.Value.Length == 0)
            {
               
                    checkboxhidden.Value = "SelectCategoryWithListbox";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false && Listbox2.SelectedIndex >= 1 && inputLong_Desc.Value.Length >= 1)
            {
                  checkboxhidden.Value = "SelectCategoryWithoutCheckbox";
            }
            
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == true && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex >= 1)
            {              
              checkboxhidden.Value = "SelectCategoryWithEverything";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == true && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex <= 0)
            {
               checkboxhidden.Value = "SelectandOrderByNutrient2";
            }
            
            else if (ListBox1.GetSelectedIndices().Count() == 0 && checkbox2.Checked == true && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex >= 1)
            {             
                    checkboxhidden.Value = "SelectCategoryWithCheckbox";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 0 && checkbox2.Checked == true && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex <= 0)
            { 
                    checkboxhidden.Value = "Search4";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 0 && checkbox2.Checked == false && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex >= 1)
            {
                checkboxhidden.Value = "SelectCategoryWithLong_DescOnly"; 
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false && inputLong_Desc.Value.Length == 0 && Listbox2.SelectedIndex <= 0)
            {
                checkboxhidden.Value = "SelectandOrderByNutrientWoLong_Desc";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex <= 0)
            {
                checkboxhidden.Value = "SelectandOrderByNutrient";
            }
            else
            {
                checkboxhidden.Value = "Search5";
            }
            string connectionStr = ConfigurationManager
                    .ConnectionStrings["connectionStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = checkboxhidden.Value;
                cmd.CommandType = CommandType.StoredProcedure;
                 if (checkboxhidden.Value == "SelectandOrderByNutrient2" || checkboxhidden.Value == "SelectandOrderByNutrient")
                    {
                        SqlParameter param = new SqlParameter
                       ("@termnuty", inputLong_Desc.Value);
                        cmd.Parameters.Add(param);
                        SqlParameter param2 = new SqlParameter
                       ("@termnut", ListBox1.SelectedItem.Text);
                        cmd.Parameters.Add(param2);
                    }
                    else if(checkboxhidden.Value == "SelectCategoryWithListbox" )
                    {
                        SqlParameter param = new SqlParameter
                        ("@termnut1", inputLong_Desc.Value);
                        cmd.Parameters.Add(param);
                        SqlParameter param2 = new SqlParameter
                        ("@termnut3", ListBox1.SelectedItem.Text);
                        cmd.Parameters.Add(param2);
                        SqlParameter param3 = new SqlParameter
                        ("@termnut2", Listbox2.SelectedItem.Text);
                        cmd.Parameters.Add(param3);
                    }
                    else if(checkboxhidden.Value == "SelectCategoryWithCheckbox")
                    {
                         SqlParameter param = new SqlParameter
                         ("@term", inputLong_Desc.Value);
                         cmd.Parameters.Add(param);
                         SqlParameter param2 = new SqlParameter
                         ("@term2", Listbox2.SelectedItem.Text);
                         cmd.Parameters.Add(param2);
                    }
                    else if (checkboxhidden.Value == "SelectCategoryWithEverything")
                    {
                        SqlParameter param = new SqlParameter
                         ("@termnut1", inputLong_Desc.Value);
                         cmd.Parameters.Add(param);
                         SqlParameter param2 = new SqlParameter
                          ("@termnut2", ListBox1.SelectedItem.Text);
                        cmd.Parameters.Add(param2);
                        SqlParameter param3 = new SqlParameter
                         ("@termnut3", Listbox2.SelectedItem.Text);
                        cmd.Parameters.Add(param3);
                    }
                    else if(checkboxhidden.Value == "SelectCategoryWithListboxWOLong_desc")
                    {
                        SqlParameter param = new SqlParameter
                        ("@termnut1", Listbox2.SelectedItem.Text);
                        cmd.Parameters.Add(param);
                        SqlParameter param2 = new SqlParameter
                          ("@termnut2", ListBox1.SelectedItem.Text);
                        cmd.Parameters.Add(param2);
                    }
                else if (checkboxhidden.Value == "SelectCategoryWithoutCheckbox")
                {
                    SqlParameter param = new SqlParameter
                     ("@termnut1", inputLong_Desc.Value);
                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                      ("@termnut2", ListBox1.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                    SqlParameter param3 = new SqlParameter
                     ("@termnut3", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param3);
                }
                else if (checkboxhidden.Value == "[dbo].[SelectCategoryWOAnything]")
                    {
                        
                        SqlParameter param = new SqlParameter("@termnut", Listbox2.SelectedItem.Text);
                        cmd.Parameters.Add(param);
                      

                    }
                else if (checkboxhidden.Value == "SelectCategoryWoLong_descAndListbox2")
                {

                    SqlParameter param = new SqlParameter("@termnut1", ListBox1.SelectedItem.Text);
                    cmd.Parameters.Add(param);


                }
                else if (checkboxhidden.Value == "SelectCategoryWithEverythingWoLong_desc")
                    {
                        SqlParameter param = new SqlParameter
                         ("@termnut1", ListBox1.SelectedItem.Text);

                        cmd.Parameters.Add(param);
                        SqlParameter param2 = new SqlParameter
                          ("@termnut2", Listbox2.SelectedItem.Text);
                        cmd.Parameters.Add(param2);
                    }
                else if (checkboxhidden.Value == "SelectCategoryWithLong_DescOnly")
                {
                    SqlParameter param = new SqlParameter
                     ("@termnut1", inputLong_Desc.Value);

                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                      ("@termnut2", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                }
                else if (checkboxhidden.Value == "SelectCategoryWithCheckboxWoLong_descAndListbox")
                    {
                      SqlParameter param = new SqlParameter
                     ("@termnut1", Listbox2.SelectedItem.Text);

                        cmd.Parameters.Add(param);
                    }
                else if (checkboxhidden.Value == "SelectandOrderByNutrientWoLong_Desc")
                {
                    SqlParameter param = new SqlParameter
                   ("@termnut", ListBox1.SelectedItem.Text);

                    cmd.Parameters.Add(param);
                }
                else if (checkboxhidden.Value == "SelectOnlyWithCheckbox")
                {                
                }
                else
                    {
                        SqlParameter param = new SqlParameter
                        ("@term", inputLong_Desc.Value);

                        cmd.Parameters.Add(param);
                    }               
                con.Open();
                var da = new SqlDataAdapter(cmd);
                var ds = new DataSet();
                da.Fill(ds);
                //SqlDataReader rdr = cmd.ExecuteReader();
                if (ListBox1.GetSelectedIndices().Count() == 1)
                {
                    gvSearchResults.Columns[1].Visible = true;
                    gvSearchResults.Columns[2].Visible = true;
                }
                else if (ListBox1.GetSelectedIndices().Count() == 0)
                {
                    gvSearchResults.Columns[1].Visible = false;
                    gvSearchResults.Columns[2].Visible = false;

                }
                if (ds.Tables.Count > 0)
                {
                    gvSearchResults.DataSource = ds.Tables[0];
                    gvSearchResults.DataBind();
                }

            }

        }
        protected void SubmitAppraisalGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == false && Listbox2.SelectedIndex >= 0 && ListBox1.GetSelectedIndices().Count() == 0)
            {
                Response.Redirect("Home.aspx");
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == false && Listbox2.SelectedIndex >= 1 && ListBox1.GetSelectedIndices().Count() == 1)
            {
                checkboxhidden.Value = "SelectCategoryWithListboxWOLong_desc";
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == false && Listbox2.SelectedIndex >= 1 && ListBox1.GetSelectedIndices().Count() == 0)
            {
                checkboxhidden.Value = "SelectCategoryWOAnything";
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && Listbox2.SelectedIndex >= 1 && ListBox1.GetSelectedIndices().Count() == 1)
            {

                checkboxhidden.Value = "SelectCategoryWithEverythingWoLong_desc";
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && Listbox2.SelectedIndex >= 1 && ListBox1.GetSelectedIndices().Count() == 0)
            {
                checkboxhidden.Value = "SelectCategoryWithCheckboxWoLong_descAndListbox";
            }

            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && ListBox1.GetSelectedIndices().Count() == 1 && Listbox2.SelectedIndex >= 1)
            {

                checkboxhidden.Value = "SelectCategoryWoLong_descAndListbox2";
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && ListBox1.GetSelectedIndices().Count() == 1 && Listbox2.SelectedIndex <= 0)
            {
                checkboxhidden.Value = "SelectCategoryWoLong_descAndListbox2";
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && Listbox2.SelectedIndex <= 0 && ListBox1.GetSelectedIndices().Count() == 1)
            {

                checkboxhidden.Value = "SelectCategoryWoLong_descAndListbox2";
            }
            else if (inputLong_Desc.Value.Length == 0 && checkbox2.Checked == true && Listbox2.SelectedIndex <= 0 && ListBox1.GetSelectedIndices().Count() == 0)
            {
                checkboxhidden.Value = "SelectOnlyWithCheckbox";
            }

            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false && Listbox2.SelectedIndex >= 1 && inputLong_Desc.Value.Length == 0)
            {

                checkboxhidden.Value = "SelectCategoryWithListbox";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false && Listbox2.SelectedIndex >= 1 && inputLong_Desc.Value.Length >= 1)
            {
                checkboxhidden.Value = "SelectCategoryWithoutCheckbox";
            }

            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == true && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex >= 1)
            {
                checkboxhidden.Value = "SelectCategoryWithEverything";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == true && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex <= 0)
            {
                checkboxhidden.Value = "SelectandOrderByNutrient2";
            }

            else if (ListBox1.GetSelectedIndices().Count() == 0 && checkbox2.Checked == true && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex >= 1)
            {
                checkboxhidden.Value = "SelectCategoryWithCheckbox";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 0 && checkbox2.Checked == true && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex <= 0)
            {
                checkboxhidden.Value = "Search4";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 0 && checkbox2.Checked == false && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex >= 1)
            {
                checkboxhidden.Value = "SelectCategoryWithLong_DescOnly";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false && inputLong_Desc.Value.Length == 0 && Listbox2.SelectedIndex <= 0)
            {
                checkboxhidden.Value = "SelectandOrderByNutrientWoLong_Desc";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false && inputLong_Desc.Value.Length >= 1 && Listbox2.SelectedIndex <= 0)
            {
                checkboxhidden.Value = "SelectandOrderByNutrient";
            }
            else
            {
                checkboxhidden.Value = "Search5";
            }
            string connectionStr = ConfigurationManager
                    .ConnectionStrings["connectionStr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = checkboxhidden.Value;
                cmd.CommandType = CommandType.StoredProcedure;
                if (checkboxhidden.Value == "SelectandOrderByNutrient2" || checkboxhidden.Value == "SelectandOrderByNutrient")
                {
                    SqlParameter param = new SqlParameter
                   ("@termnuty", inputLong_Desc.Value);
                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                   ("@termnut", ListBox1.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                }
                else if (checkboxhidden.Value == "SelectCategoryWithListbox")
                {
                    SqlParameter param = new SqlParameter
                    ("@termnut1", inputLong_Desc.Value);
                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                    ("@termnut3", ListBox1.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                    SqlParameter param3 = new SqlParameter
                    ("@termnut2", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param3);
                }
                else if (checkboxhidden.Value == "SelectCategoryWithCheckbox")
                {
                    SqlParameter param = new SqlParameter
                    ("@term", inputLong_Desc.Value);
                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                    ("@term2", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                }
                else if (checkboxhidden.Value == "SelectCategoryWithEverything")
                {
                    SqlParameter param = new SqlParameter
                     ("@termnut1", inputLong_Desc.Value);
                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                     ("@termnut2", ListBox1.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                    SqlParameter param3 = new SqlParameter
                     ("@termnut3", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param3);
                }
                else if (checkboxhidden.Value == "SelectCategoryWithListboxWOLong_desc")
                {
                    SqlParameter param = new SqlParameter
                    ("@termnut1", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                      ("@termnut2", ListBox1.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                }
                else if (checkboxhidden.Value == "SelectCategoryWithoutCheckbox")
                {
                    SqlParameter param = new SqlParameter
                     ("@termnut1", inputLong_Desc.Value);
                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                      ("@termnut2", ListBox1.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                    SqlParameter param3 = new SqlParameter
                     ("@termnut3", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param3);
                }
                else if (checkboxhidden.Value == "SelectCategoryWOAnything")
                {

                    SqlParameter param = new SqlParameter("@termnut", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param);


                }
                else if (checkboxhidden.Value == "SelectCategoryWoLong_descAndListbox2")
                {

                    SqlParameter param = new SqlParameter("@termnut1", ListBox1.SelectedItem.Text);
                    cmd.Parameters.Add(param);
                    

                }
                else if (checkboxhidden.Value == "SelectCategoryWithEverythingWoLong_desc")
                {
                    SqlParameter param = new SqlParameter
                     ("@termnut1", ListBox1.SelectedItem.Text);

                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                      ("@termnut2", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                }
                else if (checkboxhidden.Value == "SelectCategoryWithLong_DescOnly")
                {
                    SqlParameter param = new SqlParameter
                     ("@termnut1", inputLong_Desc.Value);

                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                      ("@termnut2", Listbox2.SelectedItem.Text);
                    cmd.Parameters.Add(param2);
                }
                else if (checkboxhidden.Value == "SelectCategoryWithCheckboxWoLong_descAndListbox")
                {
                    SqlParameter param = new SqlParameter
                   ("@termnut1", Listbox2.SelectedItem.Text);

                    cmd.Parameters.Add(param);
                }
                else if (checkboxhidden.Value == "SelectandOrderByNutrientWoLong_Desc")
                {
                    SqlParameter param = new SqlParameter
                   ("@termnut", ListBox1.SelectedItem.Text);

                    cmd.Parameters.Add(param);
                }
                else if (checkboxhidden.Value == "SelectOnlyWithCheckbox")
                {
                }
                else
                {
                    SqlParameter param = new SqlParameter
                    ("@term", inputLong_Desc.Value);

                    cmd.Parameters.Add(param);
                }
                con.Open();
                var da = new SqlDataAdapter(cmd);
                var ds = new DataSet();
                da.Fill(ds);
                //SqlDataReader rdr = cmd.ExecuteReader();
                if (ListBox1.GetSelectedIndices().Count() == 1)
                {
                    gvSearchResults.Columns[1].Visible = true;
                    gvSearchResults.Columns[2].Visible = true;
                }
                else if (ListBox1.GetSelectedIndices().Count() == 0)
                {
                    gvSearchResults.Columns[1].Visible = false;
                    gvSearchResults.Columns[2].Visible = false;

                }
                if (ds.Tables.Count > 0)
                {
                    gvSearchResults.PageIndex = e.NewPageIndex;
                    gvSearchResults.DataSource = ds.Tables[0];
                    gvSearchResults.DataBind();
                }


            }

        }
        protected void GridView1_PreRender(object apple, EventArgs l)
        {
            LabelPage.Text = "Displaying Page " + (gvSearchResults.PageIndex + 1).ToString()
                + " of " + GridView1.PageCount.ToString();
        }
    

    }
}
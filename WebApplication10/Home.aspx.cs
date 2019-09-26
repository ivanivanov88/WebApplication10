//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Configuration;
//using System.Data;
//using System.Data.SqlClient;
//using System.Text;
//using System.Web.UI.HtmlControls;
//using Newtonsoft.Json;
//using System.Web.Services;

//namespace WebApplication10
//{

//    public partial class SearchPageWithDynamicSQL : System.Web.UI.Page
//    {
//        [WebMethod(EnableSession = true)]
//        protected void Page_Load(object food, EventArgs a)
//        {

//            if(!IsPostBack)
//            {
//                checkbox2.Checked = false;
//                checkboxhidden.Value = "Search3";
//                Session["param"] = "";
//                BindData();
//            }

//        }
//        private void BindData()
//        {
//            string constr = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;

//            using (SqlConnection con = new SqlConnection(constr))
//            {
//                string myquery = "Search6";
//                SqlCommand cmd = new SqlCommand(myquery, con);
//                cmd.CommandType = CommandType.StoredProcedure;
//                con.Open();
//                SqlDataAdapter sda = new SqlDataAdapter(cmd);
//                DataSet ds = new DataSet();
//                sda.Fill(ds, "NutrDesc");
//                ListBox1.DataSource = ds;
//                ListBox1.DataTextField = "NutrDesc";
//                ListBox1.DataValueField = "Nutr_No";
//                ListBox1.Visible = true;
//                ListBox1.DataBind();
//                con.Close();
//            }
//        }
//        protected void LinkButton1_Click(object sender, CommandEventArgs e)
//        {

//            Response.Redirect("ProductDetails.aspx?NDB_No=" + e.CommandArgument.ToString());

//            Session["id"] = 1;
//        }
//        public string StringA { get; set; }

//        public void Check_Clicked(object check, EventArgs c)
//        {

//            if (checkbox2.Checked)
//            {
//                StringA = "Search4";
//                Session["param"] = "Search4";
//            }
//            else
//            {
//                StringA = "Search3";
//                Session["param"] = "";

//            }
//            checkboxhidden.Value = StringA;         
//        }
//        protected void ListBox1_SelectedIndexChanged(object sender, System.EventArgs e)
//        {
//            string selecteditem = ListBox1.SelectedItem.Text;
//            string connstr = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;
//            using (SqlConnection conny = new SqlConnection(connstr))
//            {
//                SqlCommand cmd = new SqlCommand();
//                cmd.Connection = conny;
//                cmd.CommandText = checkboxhidden.Value;
//                cmd.CommandType = CommandType.StoredProcedure;
//                if (ListBox1.SelectedItem.Text.Trim() != "")
//                {
//                    SqlParameter param = new SqlParameter
//                            ("@term2", ListBox1.SelectedItem.Text);
//                    cmd.Parameters.Add(param);
//                }
//                conny.Open();
//                SqlDataReader rdry = cmd.ExecuteReader();
//            }
//        }

//        protected void BtnSearch_Click(object sender, EventArgs e)
//        {
//            if (inputLong_Desc.Value.Length == 0)
//            {
//                Response.Redirect("SearchPageWithDynamicSQL.aspx");
//            }             
//            string connectionStr = ConfigurationManager
//                    .ConnectionStrings["connectionStr"].ConnectionString;
//                using (SqlConnection con = new SqlConnection(connectionStr))
//                {
//                SqlCommand cmd = new SqlCommand();
//                cmd.Connection = con;
//                cmd.CommandText = checkboxhidden.Value;
//                cmd.CommandType = CommandType.StoredProcedure;
//               if (inputLong_Desc.Value.Trim() != "")
//                    {
//                        SqlParameter param = new SqlParameter
//                            ("@term", inputLong_Desc.Value);
//                        cmd.Parameters.Add(param);
//                   }
//                    con.Open();
//                    SqlDataReader rdr = cmd.ExecuteReader();
//                    gvSearchResults.DataSource = rdr;
//                    gvSearchResults.DataBind();
//                }

//        }

//    }
// }
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


namespace WebApplication10
{

    public partial class SearchPageWithDynamicSQL : System.Web.UI.Page
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
                //int totalRows = 0;
                BindData();
                //DatabindRepeater(0, gvSearchResults.PageSize, totalRows);
             
            }
        }
        private void BindData()
        {
            string constr = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                string myquery = "Search6";
                SqlCommand cmd = new SqlCommand(myquery, con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds, "NutrDesc");
                ListBox1.DataSource = ds;
                ListBox1.DataTextField = "NutrDesc";
                ListBox1.DataValueField = "Nutr_No";
                ListBox1.Visible = true;
                ListBox1.DataBind();
                con.Close();
            }
        }
        protected void LinkButton1_Click(object sender, CommandEventArgs e)
        {

            Response.Redirect("ProductDetails.aspx?NDB_No=" + e.CommandArgument.ToString());
            Session["NDB_No"] = e.CommandArgument.ToString();
            Session["id"] = 1;
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
            string selecteditem = ListBox1.SelectedItem.Text;
            string connstr = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;
            using (SqlConnection conny = new SqlConnection(connstr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conny;
                cmd.CommandText = "SelectandOrderByNutrient";
                cmd.CommandType = CommandType.StoredProcedure;
                if (ListBox1.SelectedItem.Text.Trim() != "")
                {
                    SqlParameter param = new SqlParameter
                            ("@termnut", ListBox1.SelectedItem.Text);
                    cmd.Parameters.Add(param);
                    SqlParameter param2 = new SqlParameter
                        ("@termnuty", inputLong_Desc.Value);
                    cmd.Parameters.Add(param2);
                }
                conny.Open();
                var da = new SqlDataAdapter(cmd);
                var ds = new DataSet();
                da.Fill(ds);
               
                if (ds.Tables.Count > 0)
                {
                    //gvSearchResults.PageIndex = e.NewPageIndex;
                    gvSearchResults.DataSource = ds.Tables[0];
                    gvSearchResults.DataBind();
                }
            }
        }
        protected void ClearFilter(object sender, EventArgs e)
        {
            ListBox1.SelectedIndex = -1;
        }
        protected void BtnSearch_Click(object sender, EventArgs e)
        {


            if (inputLong_Desc.Value.Length == 0)
            {
                Response.Redirect("SearchPageWithDynamicSQL.aspx");
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false)
            {
                checkboxhidden.Value = "SelectandOrderByNutrient";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == true)
            {
                checkboxhidden.Value = "SelectandOrderByNutrient2";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 0 && checkbox2.Checked == true)
            {
                checkboxhidden.Value = "Search4";
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
                if (inputLong_Desc.Value.Trim() != "")
                {
                    if (checkboxhidden.Value.Length >= 11)
                    {
                        SqlParameter param = new SqlParameter
                            ("@termnuty", inputLong_Desc.Value);

                        cmd.Parameters.Add(param);
                        SqlParameter param2 = new SqlParameter
                          ("@termnut", ListBox1.SelectedItem.Text);
                        cmd.Parameters.Add(param2);
                    }
                    else
                    {
                        SqlParameter param = new SqlParameter
                        ("@term", inputLong_Desc.Value);

                        cmd.Parameters.Add(param);
                    }
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
                else
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
            if (inputLong_Desc.Value.Length == 0)
            {
                Response.Redirect("SearchPageWithDynamicSQL.aspx");
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == false)
            {
                checkboxhidden.Value = "SelectandOrderByNutrient";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 1 && checkbox2.Checked == true)
            {
                checkboxhidden.Value = "SelectandOrderByNutrient2";
            }
            else if (ListBox1.GetSelectedIndices().Count() == 0 && checkbox2.Checked == true)
            {
                checkboxhidden.Value = "Search4";
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
                if (inputLong_Desc.Value.Trim() != "")
                {
                    if (checkboxhidden.Value.Length >= 11)
                    {
                        SqlParameter param = new SqlParameter
                            ("@termnuty", inputLong_Desc.Value);

                        cmd.Parameters.Add(param);
                        SqlParameter param2 = new SqlParameter
                          ("@termnut", ListBox1.SelectedItem.Text);
                        cmd.Parameters.Add(param2);
                    }
                    else
                    {
                        SqlParameter param = new SqlParameter
                        ("@term", inputLong_Desc.Value);

                        cmd.Parameters.Add(param);
                    }
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
                else
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
        //protected void linkButton_Click(object sender, EventArgs e)
        //{
        //    int totalRows = 0;
        //    int pageIndex = int.Parse((sender as LinkButton).CommandArgument);
        //    pageIndex -= 1;
        //    gvSearchResults.PageIndex = pageIndex;
        //    gvSearchResults.DataSource = ????????????
        //    gvSearchResults(pageIndex, gvSearchResults.PageSize, out totalRows);
        //    gvSearchResults.DataBind();
        //    DatabindRepeater(pageIndex, gvSearchResults.PageSize, totalRows);
        //}
        //private void DatabindRepeater(int pageIndex, int pageSize, int totalRows)
        //{
        //    int totalPages = totalRows / pageSize;
        //    if ((totalRows % pageSize) != 0)
        //    {
        //        totalPages += 1;
        //    }

        //    List<ListItem> pages = new List<ListItem>();
        //    if (totalPages > 1)
        //    {
        //        for (int i = 1; i <= totalPages; i++)
        //        {
        //            pages.Add(new ListItem(i.ToString(), i.ToString(), i != (pageIndex + 1)));
        //        }
        //    }
        //    Repeater Rpt1 = (Repeater)Master.FindControl("repeaterPaging");
        //    Rpt1.DataSource = pages;
        //    Rpt1.DataBind();
        //}

    }
}
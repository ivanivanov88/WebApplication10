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

//    public partial class Home : System.Web.UI.Page
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
//                Response.Redirect("Home.aspx");
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
using Microsoft.AspNet.FriendlyUrls;

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
                //int totalRows = 0;
                BindData();
                //DatabindRepeater(0, gvSearchResults.PageSize, totalRows);             
                //var segments = Request.GetFriendlyUrlSegments();
                //if (segments.Any())
                //{
                //    NDB_No.Text = "ID: " + segments[0];
                //    Headline.Text = "Headline: " + segments[1];
                //    Link.Text = Link.NavigateUrl = FriendlyUrl.Href("~/article", segments[0], segments[1]);
                //}


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
        //public static string RemapInternationalCharToAscii(char c)
        //{
        //    string s = c.ToString().ToLowerInvariant();
        //    if ("àåáâäãåą".Contains(s))
        //    {
        //        return "a";
        //    }
        //    else if ("èéêëę".Contains(s))
        //    {
        //        return "e";
        //    }
        //    else if ("ìíîïı".Contains(s))
        //    {
        //        return "i";
        //    }
        //    else if ("òóôõöøőð".Contains(s))
        //    {
        //        return "o";
        //    }
        //    else if ("ùúûüŭů".Contains(s))
        //    {
        //        return "u";
        //    }
        //    else if ("çćčĉ".Contains(s))
        //    {
        //        return "c";
        //    }
        //    else if ("żźž".Contains(s))
        //    {
        //        return "z";
        //    }
        //    else if ("śşšŝ".Contains(s))
        //    {
        //        return "s";
        //    }
        //    else if ("ñń".Contains(s))
        //    {
        //        return "n";
        //    }
        //    else if ("ýÿ".Contains(s))
        //    {
        //        return "y";
        //    }
        //    else if ("ğĝ".Contains(s))
        //    {
        //        return "g";
        //    }
        //    else if (c == 'ř')
        //    {
        //        return "r";
        //    }
        //    else if (c == 'ł')
        //    {
        //        return "l";
        //    }
        //    else if (c == 'đ')
        //    {
        //        return "d";
        //    }
        //    else if (c == 'ß')
        //    {
        //        return "ss";
        //    }
        //    else if (c == 'Þ')
        //    {
        //        return "th";
        //    }
        //    else if (c == 'ĥ')
        //    {
        //        return "h";
        //    }
        //    else if (c == 'ĵ')
        //    {
        //        return "j";
        //    }
        //    else
        //    {
        //        return "";
        //    }
        //}
        //public static string URLFriendly(string title)
        //{
        //    if (title == null) return "";

        //    const int maxlen = 80;
        //    int len = title.Length;
        //    bool prevdash = false;
        //    var sb = new StringBuilder(len);
        //    char c;

        //    for (int i = 0; i < len; i++)
        //    {
        //        c = title[i];
        //        if ((c >= 'a' && c <= 'z') || (c >= '0' && c <= '9'))
        //        {
        //            sb.Append(c);
        //            prevdash = false;
        //        }
        //        else if (c >= 'A' && c <= 'Z')
        //        {
        //            // tricky way to convert to lowercase
        //            sb.Append((char)(c | 32));
        //            prevdash = false;
        //        }
        //        else if (c == ' ' || c == ',' || c == '.' || c == '/' ||
        //            c == '\\' || c == '-' || c == '_' || c == '=')
        //        {
        //            if (!prevdash && sb.Length > 0)
        //            {
        //                sb.Append('-');
        //                prevdash = true;
        //            }
        //        }
        //        else if ((int)c >= 128)
        //        {
        //            int prevlen = sb.Length;
        //            sb.Append(RemapInternationalCharToAscii(c));
        //            if (prevlen != sb.Length) prevdash = false;
        //        }
        //        if (i == maxlen) break;
        //    }

        //    if (prevdash)
        //        return sb.ToString().Substring(0, sb.Length - 1);
        //    else
        //        return sb.ToString();
        //}

        //protected void LinkButton1_Click(object sender, CommandEventArgs e)
        //{

        //    Response.Redirect("ProductDetails.aspx?NDB_No=" + e.CommandArgument.ToString());
            
        //    Session["id"] = 1;
        //}
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
                Response.Redirect("Home.aspx");
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
                Response.Redirect("Home.aspx");
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
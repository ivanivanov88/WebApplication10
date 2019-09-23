using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Windows.Forms;
namespace WebApplication10
{
    
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler, System.Web.SessionState.IRequiresSessionState
    {
        

       
        public void ProcessRequest(HttpContext context) 
        {

            var ac = string.Empty;
            //blarny = context.Session["param"].ToString();
            ac = context.Session["param"].ToString() ?? "";
            if ( String.IsNullOrEmpty(ac))
            {
                ac = "Search3";
            }
            else
            {
                ac = "Search4";
            }
            string term = context.Request["term"] ?? "";
            List<string> listFOODNAME = new List<string>();

            string cs = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;
            using(SqlConnection con = new SqlConnection(cs))
            {
             
                SqlCommand cmd = new SqlCommand(ac, con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName = "@term",
                    Value = term
                });
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while(rdr.Read())
                {
                    listFOODNAME.Add(rdr["Long_Desc"].ToString());
                }
            }
            JavaScriptSerializer js = new JavaScriptSerializer();
            context.Response.Write(js.Serialize(listFOODNAME));
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
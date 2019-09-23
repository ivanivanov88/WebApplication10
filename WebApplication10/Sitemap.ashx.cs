using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Xml;

namespace WebApplication10
{
    /// <summary>
    /// Summary description for Handler2
    /// </summary>
    public class Sitemap : IHttpHandler
    {


        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/xml";
            using (XmlTextWriter consumer = new XmlTextWriter(context.Response.OutputStream, Encoding.UTF8))
            {
                consumer.WriteStartDocument();
                consumer.WriteStartElement("urlset");
                consumer.WriteAttributeString("xmlns", "http://www.sitemaps.org/schemas/sitemap/0.9");
                consumer.WriteStartElement("url");

                string connect = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;
                string url = "https://www.consumestats.com";
                using (SqlConnection conn = new SqlConnection(connect))
                {
                    using (SqlCommand cmd = new SqlCommand("Search8", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        conn.Open();
                        using (SqlDataReader rdr = cmd.ExecuteReader())
                        {
                            // Get the date of the most recent article
                            rdr.Read();
                            consumer.WriteElementString("loc", string.Format("{0}Default.aspx", url));
                            consumer.WriteElementString("lastmod", "2019-09-22");
                            consumer.WriteElementString("changefreq", "weekly");
                            consumer.WriteElementString("priority", "1.0");
                            consumer.WriteEndElement();
                            // Move to the Article IDs
                            rdr.NextResult();
                            while (rdr.Read())
                            {
                                consumer.WriteStartElement("url");
                                consumer.WriteElementString("loc", string.Format("{0}Article.aspx?ArticleID={1}", url, rdr[0]));

                                if (rdr[1] != DBNull.Value)
                                    consumer.WriteElementString("lastmod", string.Format("{0:yyyy-MM-dd}", rdr[1]));
                                consumer.WriteElementString("changefreq", "monthly");
                                consumer.WriteElementString("priority", "0.5");
                                consumer.WriteEndElement();
                            }
                            // Move to the Article Type IDs
                            rdr.NextResult();
                            while (rdr.Read())
                            {
                                consumer.WriteStartElement("url");
                                consumer.WriteElementString("loc", string.Format("{0}ArticleTypes.aspx?Type={1}", url, rdr[0]));
                                consumer.WriteElementString("priority", "0.5");
                                consumer.WriteEndElement();
                            }
                            // Finally move to the Category IDs
                            rdr.NextResult();
                            while (rdr.Read())
                            {
                                consumer.WriteStartElement("url");
                                consumer.WriteElementString("loc", string.Format("{0}Category.aspx?Category={1}", url, rdr[0]));
                                consumer.WriteElementString("priority", "0.5");
                                consumer.WriteEndElement();
                            }
                            consumer.WriteEndElement();
                            consumer.WriteEndDocument();
                            consumer.Flush();
                        }
                        context.Response.End();
                    }
                }
            }
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
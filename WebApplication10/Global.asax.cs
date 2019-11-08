using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;





namespace WebApplication10
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);

            MyRouteConfig.RegisterRoutes(RouteTable.Routes);
            RegisterCustomRoutes(RouteTable.Routes);
        }

        void RegisterCustomRoutes(RouteCollection routes)
        {
           
            routes.MapPageRoute(
                "ProductByNameRoute",
                "Products/{NDB_No}/{Slug_Name}",
                "~/ProductDetails.aspx"
            );
        
    


}
    
        }
    }


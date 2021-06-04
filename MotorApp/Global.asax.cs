using MotorApp.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace MotorApp
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            //GlobalFilters.Filters.Add(new AuthorizationFilter());

        }
        //protected void Application_BeginRequest()
        //{
        //    //HttpContext.Current.Cache["InputData"] = "";
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //    Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
        //    Response.Cache.SetNoStore();
        //}
        //protected void Session_End(object sender, EventArgs e)
        //{
        //    // Code that runs when a session ends. 
        //    // Note: The Session_End event is raised only when the sessionstate mode
        //    // is set to InProc in the Web.config file. If session mode is set to StateServer 
        //    // or SQLServer, the event is not raised.
        //    try
        //    {
        //      //  HttpContext.Current.Cache["InputData"] = "";
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }

        //}
        //void Application_End(object sender, EventArgs e)
        //{
        //    //  Code that runs on application shutdown

        //}


        //void Application_EndRequest(object sender, EventArgs e)
        //{
        //    //Response.Write(DateTime.Now.ToString());
        //   // HttpContext.Current.Cache["InputData"] = "";
        //}
    }
}

﻿using System;
using System.Web;
using System.Web.Routing;

namespace MediNow
{
    public class Global : System.Web.HttpApplication
    {
        public void Application_Start()
        {
            // Register the default hubs route: ~/signalr
            RouteTable.Routes.MapHubs();
        }
    }
}
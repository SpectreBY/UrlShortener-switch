using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ShortUrlMVC.Models
{
    [DbConfigurationType(typeof(MySql.Data.Entity.MySqlEFConfiguration))]
    public class UrlContext : DbContext
    {
        public UrlContext() : base("conn")
        { }

        public DbSet<ListOfUrls> ListOfUrls { get; set; }
    }
}
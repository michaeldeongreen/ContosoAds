using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContosoAds.Common
{
    public class ContosoAdsContext : DbContext
    {
        public ContosoAdsContext() : base("name=ContosoAdsContext")
        {
        }
        public ContosoAdsContext(string connString)
            : base(connString)
        {
        }
        public DbSet<Ad> Ads { get; set; }
    }
}

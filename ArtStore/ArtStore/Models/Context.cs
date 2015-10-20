using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;

namespace ArtStore.Models
{
    public class Context : DbContext
    {
        public Context() :base("ArtStore") { }

        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
        
    }
}

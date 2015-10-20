using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace ArtStore.Models
{
    public class Initializer : DropCreateDatabaseIfModelChanges<Context>
    {
        protected override void Seed(Context context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }
        private static List<Category> GetCategories()
        {
            var categories = new List<Category>
            {
                 new Category
                {
                    CategoryID = 1,
                    CategoryName = "Media"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Tools"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Paints"
                }
            };
            return categories;
        }
        private static List<Product> GetProducts()
        {
            var products = new List<Product>
            {
            new Product
                {
                    ProductID = 1,
                    ProductName = "Canvas by the Foot",
                    Description = "Looking for a quality unprimed canvas by the foot that will accommodate your fine art and craft needs? " +
                                  "Choose our 100% cotton canvas in a vast range of widths and weights to suit your painting style.",
                    ImagePath="canvasBF.jpg",
                    UnitPrice = 21.99,
                    CategoryID = 1
               },
                new Product
                {
                    ProductID = 2,
                    ProductName = "Pre-Stretched Canvas",
                    Description = " Our canvases are backwrapped and stapled for a clean presentation. Made with 100% cotton canvas, stretched on ¾″ deep stretcher bars.",
                    ImagePath="canvasBS.jpg",
                    UnitPrice = 10.99,
                     CategoryID = 1
               },
                new Product
                {
                    ProductID = 3,
                    ProductName = "Acrylic Brush",
                    Description = "Artist-quality acrylic brush. Synthetic fibre Interlocking hairs for maximum paint load.",
                    ImagePath="BrushAcrylic.jpg",
                    UnitPrice = 10.99,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "Oil Brush",
                    Description = "Artist-quality oil brush  with natural hog bristle and medium stiffness.",
                    ImagePath="BrushOil.jpg",
                    UnitPrice = 12.95,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "Arches Oil Pads",
                    Description = "This high-tech paper was specifically designed for oil painting.",
                    ImagePath="ArchesOilPads.jpg",
                    UnitPrice = 24.95,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 6,
                    ProductName = "Acrylic Basisc Starter",
                    Description = "Economical paints for murals, large format works and for experimenting and learning acrylic painting",
                    ImagePath="AcrylicBasicStarter.jpg",
                    UnitPrice = 15.99,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 7,
                    ProductName = "Liquitex Professional Acrylics",
                    Description = "These colours have the same pigment load by volume as the heavy body paints, but with a slightly thinner consistency",
                    ImagePath="AcrylicProfessionalLiquitex.jpg",
                    UnitPrice = 55.95,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 8,
                    ProductName = "Gamblin Artist's Oil Colours",
                    Description = "Gamblin Artist's Oil Colours are made with pure pigments and the finest refined linseed oil",
                    ImagePath="OilGamblinArtist.jpg",
                    UnitPrice = 89.95,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 9,
                    ProductName = "Essesntial Oil Colors",
                    Description = "True colour. Real value. Handcrafted in North America using traditional techniques",
                    ImagePath="OilEssential.jpg",
                    UnitPrice = 32.95,
                    CategoryID = 3
                }

            };
            return products;
        }
        }
}

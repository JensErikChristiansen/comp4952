using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ArtStore.Startup))]
namespace ArtStore
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

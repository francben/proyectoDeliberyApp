using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DeliverYApp.Startup))]
namespace DeliverYApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

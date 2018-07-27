using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WardrobeMVC.Startup))]
namespace WardrobeMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

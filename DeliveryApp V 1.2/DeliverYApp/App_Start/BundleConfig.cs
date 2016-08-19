using System.Web;
using System.Web.Optimization;

namespace DeliverYApp
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/jquery-1.9.1.min.js",
                      "~/Scripts/jquery-migrate-1.1.0.min.js.js",
                      "~/Scripts/jquery-ui.min.js",
                      "~/Scripts/bootstrap.min.js",
                      "~/Scripts/jquery.slimscroll.min.js",
                      "~/Scripts/jquery.cookie.js",
                      "~/Scripts/jquery-jvectormap-1.2.2.js",
                      "~/Scripts/jquery-jvectormap-world-merc-en.js",
                      "~/Scripts/bootstrap_calendar.min.js",
                      "~/Scripts/jquery.gritter.js",
                      "~/Scripts/login-v2.demo.min.js",
                      "~/Scripts/apps.min.js",
                      "~/Scripts/pace.min.js",
                      "~/Scripts/respond.js"));



            bundles.Add(new ScriptBundle("~/bundles/datatables").Include(
                     "~/Scripts/datatables/jquery.dataTables.js",
                     "~/Scripts/datatables/dataTables.bootstrap.min.js",
                     "~/Scripts/datatables/dataTables.responsive.min.js",
                     "~/Scripts/datatables/table-manage-responsive.demo.min.js"));

            bundles.Add(new StyleBundle("~/Content/css").Include(
                      "~/Content/jquery-ui.min.css",
                      "~/Content/bootstrap.min.css",
                      "~/Content/font-awesome.min.css",
                      "~/Content/animate.min.css",
                      "~/Content/style.min.css",
                      "~/Content/style-responsive.min.css",
                      "~/Content/default.css",
                      "~/Content/jquery-jvectormap-1.2.2.css",
                      "~/Content/bootstrap_calendar.css",
                      "~/Content/jquery.gritter.css"
                      ));

            bundles.Add(new StyleBundle("~/Content/onlinecss").Include(
                      "~/Content/bootstrap.min.css",
                      "~/Content/font-awesome.min.css",
                      "~/Content/style.min.css",
                      "~/Content/style-responsive.min.css",
                      "~/Content/blue.css",
                      "~/Content/animate.min.css"
                      ));

            bundles.Add(new ScriptBundle("~/bundles/onlinejs").Include(
                      "~/Scripts/pace.min.js",
                      "~/Scripts/jquery-1.9.1.min.js",
                      "~/Scripts/jquery-migrate-1.1.0.min.js",
                      "~/Scripts/bootstrap.min.js",
                      "~/Scripts/jquery.cookie.js",
                      "~/Scripts/apps.min.js"
                      ));
        }
    }
}

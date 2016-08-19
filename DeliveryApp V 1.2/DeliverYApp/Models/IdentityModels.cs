using System.Data.Entity;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace DeliverYApp.Models
{
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
        }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }

        public System.Data.Entity.DbSet<DeliverYApp.Models.Restaurante> Restaurantes { get; set; }

        public System.Data.Entity.DbSet<DeliverYApp.Models.Navegacion> Navegacions { get; set; }

        public System.Data.Entity.DbSet<DeliverYApp.Models.Cliente> Clientes { get; set; }

        public System.Data.Entity.DbSet<DeliverYApp.Models.Plato> Platoes { get; set; }

        public System.Data.Entity.DbSet<DeliverYApp.Models.Menu> Menus { get; set; }

        public System.Data.Entity.DbSet<DeliverYApp.Models.Categoria> Categorias { get; set; }

        public System.Data.Entity.DbSet<DeliverYApp.Models.Precio> Precios { get; set; }

        public System.Data.Entity.DbSet<DeliverYApp.Models.Pedido> Pedidoes { get; set; }

        public System.Data.Entity.DbSet<DeliverYApp.Models.Detalles> Detalles { get; set; }
    }
}
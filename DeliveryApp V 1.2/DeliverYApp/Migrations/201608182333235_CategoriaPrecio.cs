namespace DeliverYApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CategoriaPrecio : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Categorias",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 30),
                        RestauranteId = c.Int(nullable: false),
                        MenuId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Menus", t => t.MenuId, cascadeDelete: false)
                .ForeignKey("dbo.Restaurantes", t => t.RestauranteId, cascadeDelete: false)
                .Index(t => t.RestauranteId)
                .Index(t => t.MenuId);
            
            CreateTable(
                "dbo.Precios",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        CategoriaId = c.Int(nullable: false),
                        MenuId = c.Int(nullable: false),
                        RestauranteId = c.Int(nullable: false),
                        PlatoId = c.Int(nullable: false),
                        Costo = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Categorias", t => t.CategoriaId, cascadeDelete: false)
                .ForeignKey("dbo.Menus", t => t.MenuId, cascadeDelete: false)
                .ForeignKey("dbo.Platoes", t => t.PlatoId, cascadeDelete: false)
                .ForeignKey("dbo.Restaurantes", t => t.RestauranteId, cascadeDelete: false)
                .Index(t => t.CategoriaId)
                .Index(t => t.MenuId)
                .Index(t => t.RestauranteId)
                .Index(t => t.PlatoId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Categorias", "RestauranteId", "dbo.Restaurantes");
            DropForeignKey("dbo.Precios", "RestauranteId", "dbo.Restaurantes");
            DropForeignKey("dbo.Precios", "PlatoId", "dbo.Platoes");
            DropForeignKey("dbo.Precios", "MenuId", "dbo.Menus");
            DropForeignKey("dbo.Precios", "CategoriaId", "dbo.Categorias");
            DropForeignKey("dbo.Categorias", "MenuId", "dbo.Menus");
            DropIndex("dbo.Precios", new[] { "PlatoId" });
            DropIndex("dbo.Precios", new[] { "RestauranteId" });
            DropIndex("dbo.Precios", new[] { "MenuId" });
            DropIndex("dbo.Precios", new[] { "CategoriaId" });
            DropIndex("dbo.Categorias", new[] { "MenuId" });
            DropIndex("dbo.Categorias", new[] { "RestauranteId" });
            DropTable("dbo.Precios");
            DropTable("dbo.Categorias");
        }
    }
}

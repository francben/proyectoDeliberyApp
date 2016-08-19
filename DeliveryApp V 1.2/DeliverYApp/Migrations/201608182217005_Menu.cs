namespace DeliverYApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Menu : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Menus",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 30),
                        RestauranteId = c.Int(nullable: false),
                        Estado = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Restaurantes", t => t.RestauranteId, cascadeDelete: true)
                .Index(t => t.RestauranteId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Menus", "RestauranteId", "dbo.Restaurantes");
            DropIndex("dbo.Menus", new[] { "RestauranteId" });
            DropTable("dbo.Menus");
        }
    }
}

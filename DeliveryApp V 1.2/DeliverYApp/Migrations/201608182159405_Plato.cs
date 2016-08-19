namespace DeliverYApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Plato : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Platoes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 30),
                        Tiempo = c.DateTime(nullable: false),
                        Imagen = c.String(),
                        Estado = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Platoes");
        }
    }
}

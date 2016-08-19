namespace DeliverYApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Cliente : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Clientes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 30),
                        Apellido = c.String(nullable: false, maxLength: 30),
                        Documento = c.Int(nullable: false),
                        Clave = c.String(nullable: false),
                        Email = c.String(nullable: false),
                        Telefono = c.String(nullable: false, maxLength: 30),
                        Direccion = c.String(nullable: false, maxLength: 30),
                        Departamento = c.String(nullable: false, maxLength: 30),
                        Barrio = c.String(nullable: false, maxLength: 30),
                        Estado = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Clientes");
        }
    }
}

namespace DeliverYApp.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Pedido : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Detalles",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        PedidoId = c.Int(nullable: false),
                        PlatoId = c.Int(nullable: false),
                        Cantidad = c.Int(nullable: false),
                        Precio = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Pedidoes", t => t.PedidoId, cascadeDelete: true)
                .ForeignKey("dbo.Platoes", t => t.PlatoId, cascadeDelete: true)
                .Index(t => t.PedidoId)
                .Index(t => t.PlatoId);
            
            CreateTable(
                "dbo.Pedidoes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        RestauranteId = c.Int(nullable: false),
                        ClienteId = c.Int(nullable: false),
                        Creado = c.DateTime(nullable: false, storeType: "date"),
                        Fecha = c.DateTime(nullable: false, storeType: "date"),
                        Direccion = c.String(nullable: false, maxLength: 30),
                        Total = c.Int(nullable: false),
                        Recepcionado = c.Boolean(nullable: false),
                        Procesando = c.Boolean(nullable: false),
                        Enviado = c.Boolean(nullable: false),
                        Cobrado = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Clientes", t => t.ClienteId, cascadeDelete: true)
                .ForeignKey("dbo.Restaurantes", t => t.RestauranteId, cascadeDelete: true)
                .Index(t => t.RestauranteId)
                .Index(t => t.ClienteId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Detalles", "PlatoId", "dbo.Platoes");
            DropForeignKey("dbo.Pedidoes", "RestauranteId", "dbo.Restaurantes");
            DropForeignKey("dbo.Detalles", "PedidoId", "dbo.Pedidoes");
            DropForeignKey("dbo.Pedidoes", "ClienteId", "dbo.Clientes");
            DropIndex("dbo.Pedidoes", new[] { "ClienteId" });
            DropIndex("dbo.Pedidoes", new[] { "RestauranteId" });
            DropIndex("dbo.Detalles", new[] { "PlatoId" });
            DropIndex("dbo.Detalles", new[] { "PedidoId" });
            DropTable("dbo.Pedidoes");
            DropTable("dbo.Detalles");
        }
    }
}

class CreateDetallePedidos < ActiveRecord::Migration
  def change
    create_table :detalle_pedidos do |t|
      t.integer :pedido_id
      t.integer :empresa_id
      t.integer :plato_id
      t.integer :cantidad
      t.integer :costo_plato

      t.timestamps null: false
    end
    add_foreign_key(:detalle_pedidos, :pedidos)
    add_foreign_key(:detalle_pedidos, :empresas)
    add_foreign_key(:detalle_pedidos, :platos)
  end
end

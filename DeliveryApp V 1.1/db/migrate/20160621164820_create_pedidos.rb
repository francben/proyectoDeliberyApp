class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.integer :empresa_id
      t.integer :orden_numero
      t.integer :cliente_id
      t.string :fecha_pedido
      t.string :direccion
      t.integer :monto_total
      t.time :tiempo_estimado_envio
      t.boolean :recepcionado
      t.boolean :enviado
      t.boolean :entregado
      t.integer :usuario_id
      t.integer :repartidor_id
      t.boolean :estado

      t.timestamps null: false
    end
    add_foreign_key(:pedidos, :empresas)
    add_foreign_key(:pedidos, :clientes)
    add_foreign_key(:pedidos, :usuarios)
    add_foreign_key(:pedidos, :repartidors)
    add_index :pedidos, :orden_numero,                unique: true
  end
end

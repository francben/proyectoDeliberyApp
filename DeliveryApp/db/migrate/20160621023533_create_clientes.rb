class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :nombre_usuario
      t.string :documento
      t.string :email
      t.string :telefono
      t.string :celular
      t.string :direccion
      t.string :pais
      t.string :ciudad
      t.string :departamento
      t.integer :usuario_id
      t.boolean :estado

      t.timestamps null: false
    end
    add_foreign_key(:clientes, :usuarios)
    add_index :clientes, :documento,                unique: true
  end
end

class CreatePrecios < ActiveRecord::Migration
  def change
    create_table :precios do |t|
      t.integer :plato_id
      t.integer :categoria_id
      t.integer :precio
      t.boolean :estado

      t.timestamps null: false
    end
    add_foreign_key(:precios, :platos)
    add_foreign_key(:precios, :categorias)
    add_index :precios, :precio
  end
end

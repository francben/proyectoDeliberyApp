class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.integer :menu_id
      t.integer :empresa_id
      t.string :nombre
      t.boolean :estado

      t.timestamps null: false
    end
    add_foreign_key(:categorias, :menus)
    add_foreign_key(:categorias, :empresas)
    add_index :categorias, :nombre,                unique: true
  end
end

class CreatePlatoCategorias < ActiveRecord::Migration
  def change
    create_table :plato_categorias do |t|
      t.integer :plato_id
      t.integer :categoria_id
      t.integer :menu_id
      t.integer :empresa_id

      t.timestamps null: false
    end
    add_foreign_key(:plato_categorias, :platos)
    add_foreign_key(:plato_categorias, :categorias)
    add_foreign_key(:plato_categorias, :menus)
    add_foreign_key(:plato_categorias, :empresas)
  end
end

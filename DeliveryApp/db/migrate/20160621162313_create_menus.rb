class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :empresa_id
      t.string :nombre
      t.boolean :estado

      t.timestamps null: false
    end
    add_foreign_key(:menus, :empresas)
    add_index :menus, :nombre,                unique: true
  end
end

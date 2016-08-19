class CreatePlatos < ActiveRecord::Migration
  def change
    create_table :platos do |t|
      t.string :nombre
      t.string :img
      t.time :tiempo_preparacion
      t.boolean :estado

      t.timestamps null: false
    end
    add_index :platos, :nombre,                unique: true
  end
end

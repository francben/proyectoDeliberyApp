class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string :nombre
      t.boolean :estado

      t.timestamps null: false
    end
    add_index :ingredientes, :nombre,                unique: true
  end
end

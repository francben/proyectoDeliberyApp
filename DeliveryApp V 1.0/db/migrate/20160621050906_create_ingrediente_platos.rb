class CreateIngredientePlatos < ActiveRecord::Migration
  def change
    create_table :ingrediente_platos do |t|
      t.integer :ingrediente_id
      t.integer :plato_id
      t.integer :cantidad

      t.timestamps null: false
    end
    add_foreign_key(:ingrediente_platos, :ingredientes)
    add_foreign_key(:ingrediente_platos, :platos)
  end
end

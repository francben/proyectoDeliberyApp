class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :nombre_rol
      t.string :descripcion_rol
      t.integer :estado_rol, default: 1

      t.timestamps null: false
    end
    add_index :roles, :nombre_rol,                unique: true
  end
end

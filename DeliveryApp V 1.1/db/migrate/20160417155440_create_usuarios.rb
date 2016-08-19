class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :rol_id
      t.string :nick_usuario
      t.string :nombre_usuario
      t.string :apellido_usuario
      t.string :documento_usuario
      t.integer :estado_usuario, default: 1

      t.timestamps null: false
    end
    add_foreign_key(:usuarios, :roles)
    add_index :usuarios, :documento_usuario,                unique: true
    add_index :usuarios, :nick_usuario,                unique: true
  end
end

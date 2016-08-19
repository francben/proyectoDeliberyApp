class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :razonsocial
      t.string :nombrecorto
      t.string :ruc
      t.string :pais
      t.string :ciudad
      t.string :departamento
      t.string :direccion
      t.string :email
      t.string :telefono
      t.string :web
      t.boolean :estado

      t.timestamps null: false
    end
    add_index :empresas, :razonsocial,                unique: true
  end
end

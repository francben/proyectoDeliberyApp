class CreateRepartidors < ActiveRecord::Migration
  def change
    create_table :repartidors do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :zona
      t.boolean :en_servicio

      t.timestamps null: false
    end
  end
end

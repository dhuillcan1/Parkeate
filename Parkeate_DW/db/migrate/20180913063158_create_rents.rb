class CreateRents < ActiveRecord::Migration[5.1]
  def change
    create_table :rents do |t|
      t.integer :parking_id
      t.integer :id_usuario
      t.datetime :fecha_inicio
      t.datetime :fecha_fin
      t.integer :id_servicio_adicional
      t.text :observaciones
      t.timestamps
    end
  end
end

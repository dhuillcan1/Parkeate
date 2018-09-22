class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.integer :parking_id
      t.integer :tipo_servicio
      t.text :descripcion
      t.float :tarifa

      t.timestamps
    end
  end
end

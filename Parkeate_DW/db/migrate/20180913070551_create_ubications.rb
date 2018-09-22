class CreateUbications < ActiveRecord::Migration[5.1]
  def change
    create_table :ubications do |t|
      t.integer :id_estacionamiento
      t.string :cod_departamento
      t.string :cod_provincia
      t.string :cod_distrito

      t.timestamps
    end
  end
end

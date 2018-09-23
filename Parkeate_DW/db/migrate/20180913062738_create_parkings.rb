class CreateParkings < ActiveRecord::Migration[5.1]
  def change
    create_table :parkings do |t|
      t.integer :id_usuario
      t.integer :id_ubicacion
      t.integer :id_imagen
      t.string :nombre
      t.string :direccion
      t.decimal :precio
      t.integer :telefono
      t.integer :id_tipo

      t.timestamps
    end
  end
end

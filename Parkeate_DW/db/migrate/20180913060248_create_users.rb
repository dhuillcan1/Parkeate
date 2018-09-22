class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.integer :id_tipo_documento
      t.integer :numero_documento
      t.integer :usertype_id
      t.string :telefono
      t.string :correo
      t.string :correo_confirmation
      t.string :contraseña
      t.string :contraseña_confirmation

      t.timestamps
    end
  end
end

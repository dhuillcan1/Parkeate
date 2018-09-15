class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.integer :id_tipo_documento
      t.integer :numero_documento
      t.integer :id_tipo_usuario
      t.string :telefono
      t.string :correo1
      t.string :correo2
      t.string :contraseña1
      t.string :contraseña2

      t.timestamps
    end
  end
end

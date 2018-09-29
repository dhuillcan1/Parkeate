class ChangeIdImagen < ActiveRecord::Migration[5.1]
  def change
  	change_column :parkings, :id_imagen, :string
  end
end

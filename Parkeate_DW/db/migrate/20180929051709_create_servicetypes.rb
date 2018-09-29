class CreateServicetypes < ActiveRecord::Migration[5.1]
  def change
    create_table :servicetypes do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end

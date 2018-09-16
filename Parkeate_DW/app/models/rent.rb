class Rent < ApplicationRecord

	validates :id_usuario, :fecha_inicio, :fecha_fin, :id_estacionamiento, presence: {message: 'Obligatorio'}
	validates :observaciones, length: {maximum:150 ,too_long:'Maximo %{count} caracteres'}
    
end

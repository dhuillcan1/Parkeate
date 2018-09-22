class Rent < ApplicationRecord

	belongs_to :parking
	validates :id_usuario, :fecha_inicio, :fecha_fin, :parking_id, presence: {message: 'Obligatorio'}
	validates :observaciones, length: {maximum:150 ,too_long:'Maximo %{count} caracteres'}
    
end

class Service < ApplicationRecord

	validates :tipo_servicio, :descripcion,:tarifa, :parking_id, presence: {message: 'Obligatorio'}
	validates :descripcion, length: {maximum:150 ,too_long:'Maximo %{count} caracteres'}
    validates :tarifa, numericality:{greater_than:0, less_than:100, message:'incorrecto'}

    belongs_to :servicetype, foreign_key: 'tipo_servicio'

end

class Service < ApplicationRecord
	validates :tipo_servicio, :descripcion,:tarifa, :id_estacionamiento, presence: {message: 'Obligatorio'}
	validates :descripcion, length: {maximum:150 ,too_long:'Maximo %{count} caracteres'}
    validates :tarifa, numericality:{greater_than:0, less_than:100, message:'incorrecto'}

end

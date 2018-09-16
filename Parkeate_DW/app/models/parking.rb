class Parking < ApplicationRecord

	validates :nombre, :direccion, :precio, :telefono,:id_usuario,:id_tipo, presence: {message: 'Obligatorio'}
	validates :telefono , length: {is:9 ,message: 'debe contener 9 digitos'}
	validates :nombre,:direccion, length: {minimum:4, maximum:50 ,too_short:'Minimo %{count} caracteres', too_long:'Maximo %{count} caracteres'}
	validates :nombre, format: { with: /\A[a-zA-ZñÑáéíóúÁÉÍÓÚ]+\z/,
    message: "solo permite letras" }
    validates :precio, numericality:{greater_than:0, less_than:1000, message:'incorrecto'}
end

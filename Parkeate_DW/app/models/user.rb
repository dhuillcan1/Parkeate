class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "invalido")
    end
  end
end

class User < ApplicationRecord

  belongs_to :usertype
  
	validates :nombre, :apellido1, :apellido2, :numero_documento, :telefono, :correo, :correo_confirmation, :contraseña, :contraseña_confirmation, presence: {message: 'Obligatorio'}
	validates :numero_documento , length: {minimum:8, maximun:13, 
		too_short:'Minimo %{count} digitos' , too_long: 'Maximo %{count} digitos'}
	validates :nombre, :apellido1, :apellido2 , length: {minimum:3, maximum:40 ,too_short:'Minimo %{count} caracteres', too_long:'Maximo %{count} caracteres'}
	validates :nombre, :apellido1, :apellido2, format: { with: /\A[a-zA-ZñÑáéíóúÁÉÍÓÚ]+\z/,
    message: "solo permite letras" }
    validates :correo,:correo_confirmation, email: true
    validates :correo, confirmation:true
    validates :contraseña, confirmation:true
    validates :telefono , length: {is:9 ,message: 'debe contener 9 digitos'}
    
end

json.extract! user, :id, :nombre, :apellido1, :apellido2, :id_tipo_documento, :numero_documento, :id_tipo_usuario, :telefono, :correo, :correo_confirmation, :contraseña, :contraseña_confirmation, :created_at, :updated_at
json.url user_url(user, format: :json)

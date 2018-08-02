json.extract! acudiente, :id, :tipo_identificacion, :identificacion, :nombre, :apellido, :genero, :email, :fecha_n, :tipo_sangre, :direccion, :barrio, :telefono, :celular, :parentesco, :created_at, :updated_at
json.url acudiente_url(acudiente, format: :json)

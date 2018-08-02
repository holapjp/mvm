json.extract! alumno, :id, :tipo_identificacion, :identificacion, :nombre, :apellido, :genero, :email, :fecha_n, :tipo_sangre, :direccion, :barrio, :telefono, :celular, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)

class CreateAcudientes < ActiveRecord::Migration[5.2]
  def change
    create_table :acudientes do |t|
      t.string :tipo_identificacion
      t.string :identificacion
      t.string :nombre
      t.string :apellido
      t.boolean :genero
      t.string :email
      t.date :fecha_n
      t.string :tipo_sangre
      t.string :direccion
      t.string :barrio
      t.string :telefono
      t.string :celular
      t.string :parentesco

      t.timestamps
    end
  end
end

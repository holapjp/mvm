class CreateDocentes < ActiveRecord::Migration[5.2]
  def change
    create_table :docentes do |t|
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

      t.timestamps
    end
  end
end

class AddCantidadAlumnoToCursos < ActiveRecord::Migration[5.2]
  def change
    add_column :cursos, :cantidad_alumno, :integer
  end
end

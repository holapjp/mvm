class AddCursoToAlumnos < ActiveRecord::Migration[5.2]
  def change
    add_reference :alumnos, :curso, foreign_key: true
  end
end

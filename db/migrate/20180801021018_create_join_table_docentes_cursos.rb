class CreateJoinTableDocentesCursos < ActiveRecord::Migration[5.2]
  def change
    create_join_table :docentes, :cursos do |t|
       t.index [:docente_id, :curso_id]
       t.index [:curso_id, :docente_id]
    end
  end
end

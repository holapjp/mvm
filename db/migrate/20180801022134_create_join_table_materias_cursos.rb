class CreateJoinTableMateriasCursos < ActiveRecord::Migration[5.2]
  def change
    create_join_table :materias, :cursos do |t|
       t.index [:materia_id, :curso_id]
       t.index [:curso_id, :materia_id]
    end
  end
end

class CreateJoinTableMateriasDocentes < ActiveRecord::Migration[5.2]
  def change
    create_join_table :materias, :docentes do |t|
       t.index [:materia_id, :docente_id]
       t.index [:docente_id, :materia_id]
    end
  end
end

class CreateJoinTableAlumnosAcudientes < ActiveRecord::Migration[5.2]
  def change
    create_join_table :alumnos, :acudientes do |t|
       t.index [:alumno_id, :acudiente_id]
       t.index [:acudiente_id, :alumno_id]
    end
  end
end

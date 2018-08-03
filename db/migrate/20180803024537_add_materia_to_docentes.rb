class AddMateriaToDocentes < ActiveRecord::Migration[5.2]
  def change
    add_reference :docentes, :materia, foreign_key: true
  end
end

class Docente < ApplicationRecord
    has_and_belongs_to_many :cursos
end

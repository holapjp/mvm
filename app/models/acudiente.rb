class Acudiente < ApplicationRecord
    has_and_belongs_to_many :alumnos
end

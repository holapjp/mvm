class Curso < ApplicationRecord
    has_and_belongs_to_many :docentes
    has_many :alumnos

    def name
    	self.nombre
    end 

    def self.search(term)
    	if term
    		where("upper(nombre) LIKE ? OR cantidad_alumno = ?","%#{term}%".upcase,"#{term}").order("id ASC")
    	else
    		Curso.all.order("id ASC")
    	end
    end 
end

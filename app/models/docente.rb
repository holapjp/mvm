class Docente < ApplicationRecord
    has_and_belongs_to_many :cursos
    has_and_belongs_to_many :materias

    def self.search(term)
    	if term
    		where("upper(nombre) LIKE ? OR upper(apellido) LIKE ? OR identificacion = ?","%#{term}%".upcase,"%#{term}%".upcase,"#{term}")
    	else
    		Docente.all.order("id ASC")
    	end
    end 
end

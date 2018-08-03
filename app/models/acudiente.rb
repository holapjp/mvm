class Acudiente < ApplicationRecord
    has_and_belongs_to_many :alumnos

    def name
    	self.nombre
    end

    def self.search(term)
    	if term
    		where("upper(nombre) LIKE ? OR upper(apellido) LIKE ? OR identificacion = ?","%#{term}%".upcase,"%#{term}%".upcase,"#{term}")
    	else
    		Acudiente.all.order("id ASC")
    	end
    end 
end

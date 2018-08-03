class Alumno < ApplicationRecord
	belongs_to :curso
	has_and_belongs_to_many :acudientes
	accepts_nested_attributes_for :acudientes


	def name
		self.nombre
	end

	def self.search(term)
		if term
			joins(:curso).where("upper(alumnos.nombre) LIKE ? OR upper(alumnos.apellido) LIKE ? OR upper(cursos.nombre) LIKE ? OR alumnos.identificacion = ?","%#{term}%".upcase,"%#{term}%".upcase,"%#{term}%".upcase,"#{term}")
		else
			Alumno.all.order("id ASC")
		end 
	end
end

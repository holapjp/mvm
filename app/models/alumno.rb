class Alumno < ApplicationRecord
	belongs_to :curso

	def name
		self.nombre
	end

	def self.search(term)
		Alumno.all
	end
end

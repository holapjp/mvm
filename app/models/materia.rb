class Materia < ApplicationRecord
	has_and_belongs_to_many :docentes

	def name
		self.nombre
	end

	def self.search(term)
		if term
			where("upper(nombre) LIKE ? ","%#{term}%".upcase)
		else
			Materia.all.order("id ASC")
		end
	end
end

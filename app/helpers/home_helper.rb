module HomeHelper

	def JsonProjectsGet()
		@All_projets = Projet.all
		return @All_projets
	end

end

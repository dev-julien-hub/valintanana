module ProjetsHelper

	def  _GetIdFromProjets(id)
		@one_projets = Projet.find(id)
		@user = User.find(@one_projets.id)
		@projets = {
			"user" => @user.name,
			"University" => @user.last_name,
			"sexe" => @user.sexe,
			"pays" => @user.pays,
			"titre" => @one_projets.titre_du_projets,
			"description" => @one_projets.description_du_projets,
			"categorie" => @one_projets.categorie_du_projets,
			"localisation" => @one_projets.localisation_du_projets,
			"jeutons" => @one_projets.jeutons_du_projets,
			"valifunders" => @one_projets.valifunders,
			"jours" => @one_projets.nombre_de_days,
			"fin" => @one_projets.fin_du_projets,
			"pourcentage" => @one_projets.pourcentage,
			"like" => @one_projets.nombre_de_like
		}
		return @projets
	end
end

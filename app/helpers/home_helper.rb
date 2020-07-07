module HomeHelper

	def JsonProjectsGet()
		@value =[]
		@All_projets = Projet.all
		for i in @All_projets
			t = Time.now()
			#get project day create
			y_end_project = (t.year - i.created_at.strftime("%Y").to_i) * 365
			m_end_project = (t.month - i.created_at.strftime("%m").to_i) * 30
			d_end_project = t.day - i.created_at.strftime("%d").to_i
			d_project = i.nombre_de_days - (y_end_project + m_end_project + d_end_project)
			i.update(fin_du_projets: d_project)
			#{project_day_d}- #{project_day_m}-#{project_day_y}
		end
		# @u = Projet.find_by_sql("SELECT * FROM projets ORDER BY nombre_de_days asc")
		for @one_projets in @All_projets
			@user= User.find(@one_projets.user_id)
			@value << {
				"name" => @user.name,
				"prenom" => @user.last_name,
				"sexe" => @user.sexe,
				"pays" => @user.pays,
				"titre" => @one_projets.titre_du_projets,
				"id" => @one_projets.id,
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
		end
		return @value
	end
end

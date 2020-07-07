# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for	i in 1...20
	Projet.create({
		user_id: i,
		titre_du_projets: "Titre du projet numero #{i}",
		description_du_projets: "Description du projets portant le numero #{i}",
		categorie_du_projets: "Categorie du projet ODD #{i}",
		localisation_du_projets: "Mahajanga",
		jeutons_du_projets: 120 * i,
		nombre_de_days: 20 + i,
		pourcentage: i + 20
	})
end
for i in 1...20
	User.create({
		name: "test#{i}",
		last_name: "test#{i}",
		email: "test#{i}@test#{i}.com",
		sexe: "Homme",
		pays: "Madagascar",
		region: "Antananarivo",
		birthday: "#{i}/12/2020",
		phone: "032 000 00 00",
		jeutons: 20 + i,
		password: "111111",
		password_confirmation: "111111"
	})
end
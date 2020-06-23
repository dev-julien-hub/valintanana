class CreateProjets < ActiveRecord::Migration[6.0]
  def change
    create_table :projets do |t|
  		t.integer :user_id,				null:false
  		t.string :titre_du_projets,				null:false
  		t.string :description_du_projets,			null:false
  		t.string :categorie_du_projets,			default:"Other"
  		t.string :localisation_du_projets
  		t.integer :jeutons_du_projets,		null:false
  		t.integer :valifunders,			default: 0
  		t.integer :nombre_de_days,			default:60
  		t.integer :fin_du_projets,		default: 0
  		t.integer :pourcentage,			default:0
  		t.integer :nombre_de_like,		default:0
      	t.timestamps
    end
  end
end

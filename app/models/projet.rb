class Projet < ApplicationRecord

	has_one_attached :image_du_projets

	has_one_attached :video_du_projets

	has_one :user
end

json.extract! personne, :id, :nom, :prenom, :eamil, :portable, :created_at, :updated_at
json.url personne_url(personne, format: :json)

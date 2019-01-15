json.extract! filme, :id, :titulo, :ano, :duracao, :diretor, :sinopse, :cat_id, :classi_id, :created_at, :updated_at
json.url filme_url(filme, format: :json)

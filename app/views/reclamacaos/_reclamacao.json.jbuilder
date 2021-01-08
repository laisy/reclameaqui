json.extract! reclamacao, :id, :titulo, :texto, :cat_problema, :nome_empresa, :usuario, :created_at, :updated_at
json.url reclamacao_url(reclamacao, format: :json)

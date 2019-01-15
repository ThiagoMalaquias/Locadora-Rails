json.extract! pedido, :id, :name, :cpf, :endereco, :bairro, :cidade, :cep, :email, :telefone, :filmes_pedido, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)

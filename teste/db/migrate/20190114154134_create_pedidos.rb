class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :name
      t.string :cpf
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :cep
      t.string :email
      t.string :telefone
      t.text :filmes_pedido

      t.timestamps
    end
  end
end

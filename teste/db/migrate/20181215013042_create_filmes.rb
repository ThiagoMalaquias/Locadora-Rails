class CreateFilmes < ActiveRecord::Migration[5.2]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.integer :ano
      t.string :duracao
      t.string :diretor
      t.string :sinopse
      t.references :cat, foreign_key: true
      t.references :classi, foreign_key: true

      t.timestamps
    end
  end
end

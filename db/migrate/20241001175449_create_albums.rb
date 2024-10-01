class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title, null: false # nomeAlbum
      t.date :release_date # dataLancamento
      t.integer :songs_count, default: 0 # qtdMusicas, com valor padrão 0

      t.references :artist, null: false, foreign_key: true # nomeArtista (relacionado à tabela de artists)
      t.references :genre, null: false, foreign_key: true # generoMusica (categoria, relacionado à tabela de generos)

      t.timestamps
    end
  end
end

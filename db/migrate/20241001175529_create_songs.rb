class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title, null: false # tituloMusica
      t.time :duration # duracaoMusica
      t.date :release_date # dataLancamento
      t.integer :involved_count # qtdEnvolvidos
      t.string :involved_names # nomesEnvolvidos
      t.integer :played_count, default: 0 # qtdReproducoes, com default 0
      t.text :lyrics # letraMusica

      t.references :album, null: false, foreign_key: true # referenciaAlbum
      t.references :artist, null: false, foreign_key: true # nomeArtista (relacionado à tabela de artistas)
      t.references :genre, null: false, foreign_key: true # generoMusica (relacionado à tabela de gêneros musicais)

      t.timestamps
    end
  end
end
class CreateRecentlyHeards < ActiveRecord::Migration[6.1]
  def change
    create_table :recently_heards do |t|
      t.references :user, null: false, foreign_key: true # idUsuario
      t.references :album, null: false, foreign_key: true # idAlbum
      t.integer :played_songs_count, default: 0 # qtdMusicasReproduzidas, inicializando com 0
      t.datetime :last_played_at # ultimaReproducao, guarda a data/hora da última reprodução

      t.timestamps
    end
  end
end

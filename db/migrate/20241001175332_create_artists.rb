class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name, null: false # nomeArtista
      t.string :password_digest, null: false # senhaArtista (usando 'password_digest' para bcrypt)
      t.integer :songs_count, default: 0 # qtdMusicasPublicadas
      t.integer :albums_count, default: 0 # qtdAlbunsPublicados

      t.timestamps
    end
  end
end

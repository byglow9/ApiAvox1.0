class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true # Referência ao usuário que favoritou
      t.references :favoritable, polymorphic: true, null: false # Associação polimórfica (músicas, álbuns, playlists)

      t.timestamps
    end

    # Adicionar um índice para melhorar a performance em buscas por user_id e favoritable_id
    add_index :favorites, [:user_id, :favoritable_type, :favoritable_id], unique: true, name: 'index_favorites_on_user_and_favoritable'
  end
end

class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.string :name, null: false # Nome do gênero, obrigatório
      t.string :description # Descrição do gênero, opcional

      t.timestamps
    end
  end
end

class Artist < ApplicationRecord
    # Relação com álbuns
    has_many :albums, dependent: :destroy # Um artista pode ter vários álbuns
  
    # Validações
    validates :name, presence: true # O nome do artista é obrigatório
    has_one_attached :photo
end
  
class Album < ApplicationRecord
  belongs_to :category
  belongs_to :artist

  has_many :songs, dependent: :destroy # Define que as músicas serão destruídas se o álbum for removido

  has_one_attached :cover # Para anexar uma imagem de capa ao álbum

  # Validações
  validates :title, presence: true
  validates :date, presence: true
end

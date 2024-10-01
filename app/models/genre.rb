class Genre < ApplicationRecord
    has_many :albums
    validates :name, presence: true
    has_one_attached :image
end

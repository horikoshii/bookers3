class Book < ApplicationRecord

    has_many :books, dependent: :destroy
    has_one_attached :image
end
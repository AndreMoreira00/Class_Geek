class Teewt < ApplicationRecord
  belongs_to :user

  validates :user, presence: true

  validates :conteudo, presence: true, length: { maximum: 140 }

  has_one_attached :photo
end

class Techno < ApplicationRecord
  has_many :flights

  has_one_attached :photo
end

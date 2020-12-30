class Logo < ApplicationRecord
  has_one_attached :image
  liquid_methods :image

end

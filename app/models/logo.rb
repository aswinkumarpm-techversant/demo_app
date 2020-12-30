class Logo < ApplicationRecord
  has_one_attached :image
  liquid_methods :image

  def to_liquid
    {
        'logo'=>self.image,
    }
  end

end

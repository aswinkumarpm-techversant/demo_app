class Logo < ApplicationRecord
  has_one_attached :image
  liquid_methods :image

  def to_liquid
    {
        'logo'=>self.image,
    }
  end

  def image_on_disk
    #ActiveStorage::Blob.service.path_for(image.key)
    ActiveStorage::Blob.service.send(:path_for, image.key)
  end

end

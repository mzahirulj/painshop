class Tshirt < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_presence_of :titel,:price, :description

end

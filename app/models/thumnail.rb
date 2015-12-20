class Thumnail < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :subject
  enum status: %i(main sub)
end

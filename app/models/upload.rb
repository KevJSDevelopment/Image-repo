class Upload < ApplicationRecord
    belongs_to :user
    belongs_to :album, optional: true
    has_one_attached :image, dependent: :destroy
end

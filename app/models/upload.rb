class Upload < ApplicationRecord
    has_one_attached :image, dependent: :destroy

    def self.search(search)
        @uploads = Upload.where("title LIKE '%#{search}%'")
    end

end

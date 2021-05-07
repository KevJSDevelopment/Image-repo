class Upload < ApplicationRecord
    has_one_attached :image, dependent: :destroy

    validates :image, attached: true, content_type: { in: ['image/png', 'image/jpg', 'image/jpeg', 'image/gif'], message: 'files only, must be one of the following file types: jpg, jpeg, png, or gif'}
    
    def self.search(search)
        @uploads = Upload.where("title LIKE '%#{search}%'")
    end

end

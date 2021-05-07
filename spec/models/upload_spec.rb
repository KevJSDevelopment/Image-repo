require 'rails_helper'

RSpec.describe Upload, type: :model do

  before(:all) do
    @file = Rails.root.join('spec', 'fixtures', 'files', 'test-picture.jpeg')
    @image = ActiveStorage::Blob.create_after_upload!(io: File.open(@file, 'rb'), filename: 'test-picture.jpeg', content_type: 'image/jpeg').signed_id # Or figure it out from `name` if you have non-JPEGs
    @upload = Upload.create(title: "test-uploade", image: @image )
  end

  it 'checks that a upload can be created' do
    expect(@upload).to be_valid
  end

  describe 'Upload validation tests' do 
    it 'validates title is required' do 
      upload = Upload.new(image: @image).save
      expect(upload).to eq false
    end

    it 'validates image is attached' do
      upload = Upload.new(image: @image)
      expect(upload.image.attached?).to eq true
    end

    it 'should save successfully' do
      upload = Upload.new(title: "test-title", image: @image).save
      expect(upload).to eq true
    end

  end
end

class CreateUploads < ActiveRecord::Migration[6.0]
  def change
    create_table :uploads do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :ablum_id
      
      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :product_id
      t.string :author
      t.string :content_body
      t.integer :rating
    end
  end
end

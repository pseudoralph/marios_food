class CreateJoinTableProductReview < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :reviews do |t|
      t.index [:product_id, :review_id]
      t.index [:review_id, :product_id]
    end
  end
end

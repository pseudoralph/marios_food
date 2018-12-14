class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :country_origin
      t.float :cost

      t.timestamps
    end
  end
end

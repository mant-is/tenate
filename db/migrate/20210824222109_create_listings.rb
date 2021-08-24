class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :sqft
      t.string :unit
      t.string :address

      t.timestamps
    end
  end
end

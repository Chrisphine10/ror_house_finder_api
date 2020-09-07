class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :property_type
      t.text :description
      t.integer :rating
      t.float :price
      t.integer :duration
      t.string :image

      t.timestamps
    end
  end
end

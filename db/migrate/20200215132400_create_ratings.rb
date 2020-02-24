class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.string :comment
      t.integer :property_id
      t.integer :tenant_id


      t.timestamps
    end
  end
end

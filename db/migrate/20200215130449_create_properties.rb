class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address, null: false
      t.integer :single_rooms, null: false
      t.integer :double_rooms , null: false
      t.integer :bathrooms , null: false
      t.integer :tenant_id

      t.timestamps
    end
  end
end

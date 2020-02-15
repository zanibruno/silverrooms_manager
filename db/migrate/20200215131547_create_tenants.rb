class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.string :name, null: false 
      t.string :phone_number, null: false 
      t.string :email, null: false
      t.string :sos_name, default: "SOS Contact Name"
      t.string :sos_number, default: "SOS Contact Number"
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.integer :rating_id


      t.timestamps
    end
  end
end

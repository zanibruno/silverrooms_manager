class CreateLandlords < ActiveRecord::Migration[6.0]
  def change
    create_table :landlords do |t|
      t.string :name, default: "Landlord Name"
      t.string :phone_number, default: "Phone Number"
      

      t.timestamps
    end
  end
end

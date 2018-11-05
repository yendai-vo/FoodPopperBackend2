class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.decimal :booking_price
      t.belongs_to :user, foreign_key: true
      
      t.timestamps
    end
  end
end

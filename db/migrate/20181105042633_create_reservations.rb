class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :no_of_tickets
      t.boolean :is_active
      t.belongs_to :user, foreign_key: true
      t.belongs_to :event, foreign_key: true
      
      t.timestamps
    end
  end
end

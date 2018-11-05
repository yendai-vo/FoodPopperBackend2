class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date_time
      t.integer :capacity
      t.decimal :ticket_price
      t.boolean :has_paid
      t.belongs_to :user, foreign_key: true
      t.belongs_to :venue, foreign_key: true
      
      t.timestamps
    end
  end
end

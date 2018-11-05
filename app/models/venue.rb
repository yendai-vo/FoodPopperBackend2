class Venue < ApplicationRecord
    belongs_to :user
    has_many :events
    has_many :reservations, through: :events
end

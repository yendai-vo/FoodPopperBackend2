class Event < ApplicationRecord
    belongs_to :user
    belongs_to :venue
    has_many :reservations
end

class Event < ApplicationRecord
    include Rails.application.routes.url_helpers

    belongs_to :user
    belongs_to :venue
    has_many :reservations
    has_one_attached :image
    accepts_nested_attributes_for :venue

end

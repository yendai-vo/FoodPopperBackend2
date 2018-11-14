class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :ticket_price ,:date_time, :capacity, :has_paid, :user_id, :venue_id, :venue, :image_url

  def image_url
   instance_options[:get_image_url].call(object.image) if object.image.attached? && !instance_options[:get_image_url].nil?
  end
end

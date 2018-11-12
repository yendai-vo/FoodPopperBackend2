class ApplicationController < ActionController::API
   # Include Knock within your application.
   include Knock::Authenticable
  
   protected
   
   # Method for checking if current_user is admin or not.
   def authorize_as_admin
     return_unauthorized unless !current_user.nil? && current_user.is_admin?
   end

  #  def get_image_url
  #   -> (image) do
  #     begin
  #       url_for(image)
  #     rescue Module::DelegationError
  #       ""
  #     end
  #   end
  # end

end

require 'rails/application_controller'

class StaticController < Rails::ApplicationController
  def index
    render file: Rails.root.join('public', 'index.html')
  end
end
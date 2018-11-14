class UsersController < ApplicationController
  # Use Knock to make sure the current_user is authenticated before completing request.
  before_action :authenticate_user,  only: [:index, :current, :update]
  before_action :authorize_as_admin, only: [:destroy]
  before_action :authorize,          only: [:update]
  
  # Should work if the current_user is authenticated.
  def index
    render json: {status: 200, msg: 'Logged-in'}
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: {status: 200, msg: 'User was created.'}
    end
  end
  
  # Call this method to check if the user is logged-in.
  # If the user is logged-in we will return the user's information.
  def current
    current_user.update!(last_login: Time.now)
    render json: current_user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render json: { status: 200, msg: 'User has been deleted.' }
    end
  end
  
  private
  
  # Setting up strict parameters for when we add account creation.
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :bio)
  end
  
  # Adding a method to check if current_user can update itself. 
  # This uses our UserModel method.
  def authorize
    return_unauthorized unless current_user && current_user.can_modify_user?(params[:id])
  end
end

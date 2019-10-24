class UsersController < ApplicationController
  # POST /signup
  def signup
    @user = User.new(user_params)
    
    if @user.save
      response = { message: 'User created successfully!'}
      render json: response, status: :created
    else
      render json: @user.errors, status: :bad
    end
  end 

  private

  def user_params
    params.require(:users).permit(
      :name,
      :email,
      :password
    )
  end
end

class UsersController < ApplicationController
  # POST /signup
  def signup
    @user = User.create(user_params)
    
    if @user.save
      response = { message: 'User created successfully!'}
      render json: response, status: :created
    else
      render json: @user.errors, status: :bad
    end
  end 

  private

  def user_params
    puts "------"
    puts params.inspect
    params.permit(
      :name,
      :email,
      :password
    )
  end
end

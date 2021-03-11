class UsersController < ApplicationController

before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def show
    
  end


  def create
    @user = User.new(user_params)
    @user.save

    redirect_to home_path
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to home_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to home_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :phone, :description)
  end

  def set_user
    @user = User.find(params[:id])
  end
end

class UsersController < ApplicationController
  def new
      @user = User.new
  end

  def show
      @user = User.find(params[:id])
      end
  def create
      @user = User.new(user_parms)
      if @user.save
          redicrect_to '/'
          end
  end
  
  private
  def user_params
      params.require(:user).permit(:name, :school)
      end
  end 

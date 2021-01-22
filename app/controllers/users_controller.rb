class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy]
  def new
    @user = User.new
  end

  def create
    new_user = User.create(user_params(:username, :your_name, :password))
    if new_user.valid?
      session[:user_id] = @user.id
      redirect_to user_path(new_user)
    else
      flash[:messages] = new_user.errors.full_messages
      redirect_to new_user_path
    end
  end


  def edit
    
  end

  def update
    @user.update(user_params())
  end



  def show

  end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params(*args)
    params.require(:user).permit(*args)
  end

end

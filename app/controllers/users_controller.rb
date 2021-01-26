class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy]
  skip_before_action :authorized, only: [:new, :create, :login, :logging_in]
  def new
    @user = User.new
  end

  def create
    new_user = User.create(user_params(:username, :your_name, :password))
    if new_user.valid?
      session[:user_id] = new_user.id
      redirect_to user_path(new_user)
    else
      flash[:messages] = new_user.errors.full_messages
      redirect_to new_user_path
    end
  end


  def edit
    
  end

  def update
    @user.update(user_params(:your_name, :password))
    redirect_to user_path
  end



  def show
    @user = current_user
  end

  def login
  end

  def logging_in
      @user = User.find_by(username: params[:username])

      if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to user_path(@user)
      else
          redirect_to login_user_path
      end

  end


  def logout  
      session[:user_id] = nil
      redirect_to login_user_path
  end

  def destroy
    @user.destroy
    redirect_to "/"
  end

private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params(*args)
    params.require(:user).permit(*args)
  end

end

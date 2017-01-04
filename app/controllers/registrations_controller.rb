class RegistrationsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user = User.new
    redirect_to tweets_url if logged_in?
  end

  def edit
  end

  def create
    @user = User.new(param_user)

    if @user.save
      login(@user.email, @user.password)
      redirect_to tweets_url
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def param_user
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

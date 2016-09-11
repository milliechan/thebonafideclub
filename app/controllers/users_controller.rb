class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = User.first
  end

  def new
    @user = User.new
  end

  def create
    @user = User.last
    # if @user.save
    #   log_in @user
    #   # flash[:success] = "Welcome!"
    #   redirect_to @user
    # else
      render 'show'
    # end
  end

  private

    def user_params
      # params.require(:user).permit(:name, :email, :password)
    end
end

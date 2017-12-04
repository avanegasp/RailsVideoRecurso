class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # user = User.create(user_params) #como primera medida hacemos esto, pero luego colocamos new
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages #es una variable de errores, mirar vista new
      render 'users/new' # xq es users??
    end
  end

  def  user_params
    params.require(:user).permit(:name)
  end
end

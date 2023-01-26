class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :edit, :destroy, :create_follow, :delete_follow]

  def index
    @users = User.all
    @following_count = @users
    .joins(:given_follows)
    .group('users.id')
    .count('follows.follower_id')
    @follower_count = @users
    .joins(:received_follows)
    .group('users.id')
    .count('follows.followed_user_id')

    @current_user_followings = current_user.followings.map(&:id)
  end

  def new 
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to @user #Deduce que tiene que ir al show del producto especifico
    else
      render :new, status: 422
    end
  end

  def create_follow
    Follow.create(follower_id: @current_user.id, followed_user_id: @user.id)
    render turbo_stream: 
      turbo_stream.replace('index', partial: @user)
    #redirect_to users_path
  end

  def delete_follow
    delete_follow = Follow.find_by(follower_id: @current_user.id, followed_user_id: @user.id)
    delete_follow.delete
    #redirect_to users_path
  end

  def show
    @follower_count = []
    @follower_count[@user.id] = @user.followers.count
    
    @following_count = []
    @following_count[@user.id] = @user.followings.count

    @current_user_followings = current_user.followings.map(&:id)
  end

  def edit; end

  def update
    if @user.update(user_params)  
      redirect_to @user #Deduce que tiene que ir al show del producto especifico
    else
      render :edit, status: 422
    end
  end

  def destroy
    @user.destroy!
    redirect_to users_path
  end

  private

  def set_user #Me ahorra tener que buscar el usuario en cada metodo
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username)
  end
end

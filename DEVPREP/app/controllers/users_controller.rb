class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def posts
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def new
    @user = User.new
  end

  def create
	  @user = User.new(user_params)
	  if @user.save
	    session[:user_id] = @user.id
	    redirect_to '/'
	  else
	    redirect_to '/signup'
	  end
	end

  def show
    @user = User.find(params[:id])
  end

  def edit

  end

  def update
    respond_to do |format|
      if @user.update!(user_params)
        format.html { redirect_to @user, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :cover, :avatar, :title, :bio, :twitter, :instagram, :slack, :git)
  end


end

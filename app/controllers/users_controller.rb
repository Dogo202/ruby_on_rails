class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :logged_in_user, only: [:index, :edit, :update, :destroy,
  #                                       :following, :followers]
  #
  # before_action :correct_user, only: [:edit, :update]
  # before_action :admin_user, only: :destroy




  # GET /users
  # GET /users.json
  def index
    @users = User.page(params[:page]).per(30)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    redirect_to(root_url) && return unless @user.confirmed?
    @microposts = @user.microposts.page(params[:page]).per(30)
  end

  # GET /users/new
  # def new
  #   @user = User.new
  # end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  # def create
  #
  #   @user = User.new(user_params)
  #     if @user.save
  #       @user.send_activation_email
  #       flash[:info] = "Please check your email to activate your account."
  #       redirect_to root_url
  #       # log_in @user
  #       # flash[:success] = "Welcome to the Sample App!"
  #       # format.html { redirect_to @user, notice: 'User was successfully created.' }
  #       # format.json { render :show, status: :created, location: @user }
  #     else
  #       render :new
  #       # format.json { render json: @user.errors, status: :unprocessable_entity }
  #   end
  # end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  # def update
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       flash[:success] = "Profile updated"
  #       format.html { redirect_to @user, notice: 'User was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @user }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.following.page(params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.page(params[:page])
    render 'show_follow'
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def user_params
    #   params.require(:user).permit(:name, :email,:password,:password_confirmation)
    # end


  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end

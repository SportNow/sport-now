class UsersController < ApplicationController
  def show
    if params[:id]
      @user = User::find(params[:id])
    else
      @user = current_user
    end

    @sport = Sport.all
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Your Profile was successfully updated.' }
      end
    end
  end

  def events
    @user = current_user
  end

private

  def user_params
    params.require(:user).permit(:image)
  end

end

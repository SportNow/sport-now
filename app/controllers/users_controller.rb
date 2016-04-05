class UsersController < ApplicationController
  def show
    if params[:id]
      @user = User::find(params[:id])
    else
      @user = current_user
    end

    @sport = Sport.all
  end

  def events
    @user = current_user
  end


end

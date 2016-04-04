class UsersController < ApplicationController
  def show
    @user = current_user
    @sport = Sport.all
  end

  def events
    @user = current_user
  end


end

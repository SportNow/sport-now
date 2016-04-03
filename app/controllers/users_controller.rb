class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def events
    @user = current_user
  end


end

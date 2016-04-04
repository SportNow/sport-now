class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(
      :first_name, :last_name, :email, :password, :password_confirmation, :birth_date, :gender, :address, :lat, :lng)
  end

  def account_update_params
    params.require(:user).permit(
      :first_name, :last_name, :email, :password, :password_confirmation, :current_password, :birth_date, :gender, :address, :lat, :lng)
  end
  
end

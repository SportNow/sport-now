class UserPreferencesController < ApplicationController
  before_action :set_user_preference, only: [:show, :edit, :update, :destroy]

  # GET /user_preferences
  # GET /user_preferences.json
  def index
    user_id = current_user.id
    @user = User.find(user_id)
    @sports = Sport.all

    @user_preferences = @user.user_preferences
    @preferences_sports = {}
    @user_preferences.each { |e| @preferences_sports[e.sport_id] = e}

  end

  # GET /user_preferences/1
  # GET /user_preferences/1.json
  def show
    render :edit
  end

  # GET /user_preferences/new
  def new
    @sports = Sport.all
    @user_preference = UserPreference.new
  end

  # GET /user_preferences/1/edit
  def edit
  end

  # POST /user_preferences
  # POST /user_preferences.json
  def create
    # @user_preference = UserPreference.new(user_preference_params)
    sport_ids = params[:sport_ids]
    skill_levels = params[:skill_levels]


    if sport_ids
      UserPreference.destroy_all "user_id = #{current_user.id}"
      sport_ids.each do |index, e|
        unless UserPreference.where(user_id: current_user.id, sport_id: sport_ids[index]).exists?
          new_preference = UserPreference.new
          new_preference.sport_id = sport_ids[index]
          new_preference.user_id = current_user.id
          new_preference.skill_level = skill_levels[index]
          new_preference.save
        end
      end
    end

    redirect_to user_preferences_url

    # respond_to do |format|
    #   if @user_preference.save
    #     format.html { redirect_to @user_preference, notice: 'User preference was successfully created.' }
    #     format.json { render :show, status: :created, location: @user_preference }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @user_preference.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /user_preferences/1
  # PATCH/PUT /user_preferences/1.json
  def update
    respond_to do |format|
      if @user_preference.update(user_preference_params)
        format.html { redirect_to @user_preference, notice: 'User preference was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_preference }
      else
        format.html { render :edit }
        format.json { render json: @user_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_preferences/1
  # DELETE /user_preferences/1.json
  def destroy
    @user_preference.destroy
    respond_to do |format|
      format.html { redirect_to user_preferences_url, notice: 'User preference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_preference
      @user_preference = UserPreference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_preference_params
      params.require(:user_preference).permit(:skill_level, :notes, :user_id, :sport_id)
    end
end

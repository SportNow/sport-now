class EventUsersController < ApplicationController
  before_action :set_event_user, only: [:show, :edit, :update, :destroy]

  # POST /event_users
  # POST /event_users.json
  def create
    @event_user = EventUser.new(event_user_params)
    @event_user.user_id = current_user.id
    @event = @event_user.event

    respond_to do |format|
      if @event_user.save
        format.html { redirect_to @event, notice: 'Enjoy the event!.' }
        format.json { render :show, status: :created, location: @event_user }
      end
    end
  end


  # DELETE /event_users/1
  # DELETE /event_users/1.json
  def destroy
    @event = @event_user.event
    @event_user.destroy
    respond_to do |format|
      format.html { redirect_to @event, notice: 'Sad to see you leaving :(' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_user
      @event_user = EventUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_user_params
      params.require(:event_user).permit(:event_id)
    end
end

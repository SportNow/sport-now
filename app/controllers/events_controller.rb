class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :join, :leave]

  # GET /events
  # GET /events.json
  def index
    # user_id = params[:user_id]

    @events = Event.search(params)

  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @sports = Sport.all
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id


    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    EventUser.where(event_id: @event.id).each do |event_user|
      event_user.destroy
    end
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # POST /events/1/join
  def join
    respond_to do |format|
      if (Time.now > @event.datetime)
        format.html { render :show, notice: 'Event has already taken place' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      else
        @event_user = EventUser.new(user_id: current_user.id, event_id: @event.id)
        if @event_user.save
          format.html { redirect_to @event, notice: 'You have joined the event: ' + @event.headline }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :show, notice: 'Could not join event' }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # POST /events/1/leave
  def leave
    @event_user = EventUser.find_by user_id: current_user.id, event_id: @event.id
    respond_to do |format|
      if @event_user != nil and @event_user.destroy
        format.html { redirect_to @event, notice: 'You have left the event: ' + @event.headline }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :show }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:headline, :description, :lat, :lng, :address, :datetime, :is_competitive, :max_seats, :skill_min, :skill_max, :image, :sport_id, :user_id)
    end
end

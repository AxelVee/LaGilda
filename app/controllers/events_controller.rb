class EventsController < ApplicationController
  
  before_filter :authenticate_user!, :only => [:create, :edit]
  before_filter :authorized_user, :only => [:update, :destroy]


 def title
   @event = Event.find(params[:id])
 end






 

  # GET /events
  # GET /events.json
  def index
    
   
   
      if params[:search].present?
    @events = Event.near(params[:search], 50, :order => :distance)
  else
    @events = Event.all
  end
   @json = Event.all.to_gmaps4rails
   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    
    @event = Event.find(params[:id])
  # render :layout => "application"
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    render_forbidden and return unless can_edit?

  end

  # POST /events
  # POST /events.json
  def create
    @event = current_user.events.build(params[:event])
   # @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to mostra_path, notice: 'Evento creato con successo.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Evento aggiornato con successo.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
  
  private

    def authorized_user
      @event = current_user.events.find_by_id(params[:id])
      flash[:notice] = "Non sei il proprietario!" if @event.nil?
      redirect_to :action => 'index' if @event.nil?
    end
 
def can_edit?
   current_user.id == @event.user_id

end
  
end

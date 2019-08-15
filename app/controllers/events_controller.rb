class EventsController < ApplicationController
	
	#Antes en cada def (show,edit..), ahora reduce cod
	before_action :set_event, only: [:show, :edit, :update, :destroy]

	def index
		@events = Event.where user_id: current_user.id
	end

	def new
		@event = Event.new
	end

	def create
		
		@event = current_user.events.new event_params

		if @event.save
			return redirect_to events_path
		end

		render :new
	end

	def show
	
	end

	def edit
	
	end

	def update
		
		@event.update event_params
		redirect_to @event
	end

	def destroy
		
		@event.destroy
		redirect_to events_path
	end


	private

	def event_params
		params.require(:event).permit(:name, :category, :place, :address, :date_start, :date_end, :type_event, :email)
	end

	def set_event
		@event = Event.find params[:id]
	end

end

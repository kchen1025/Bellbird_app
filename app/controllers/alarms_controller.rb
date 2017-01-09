class AlarmsController < ApplicationController

	def index
		@alarm = Alarm.all
	end

	def new
		@alarm = Alarm.new
	end

	def create
		@alarm = Alarm.new(alarm_params)   
	if @alarm.save
	  # Handle a successful save.
	  flash[:success] = "Alarm submitted"
	  redirect_to root_path
	else
	  render 'new'
		end
	end


  private

    def alarm_params
      params.require(:alarm).permit(:content)
    end

end

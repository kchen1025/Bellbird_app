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
		  flash.now[:success] = "Alarm submitted"
		  redirect_to root_path
		else
		  render 'new'
		end
	end


	def update
		@alarm = Alarm.find(params[:id])
		if @alarm.update_attributes(content:@alarm.content,upvotes:@alarm.upvotes+=1)
      		# Handle a successful update.
      		flash[:success] = "Upvoted"
    		redirect_to alarms_path	
    	else
      		render 'index'
      	end
	end


	def destroy
		Alarm.find(params[:id]).destroy
    	flash[:success] = "User deleted"
    	redirect_to alarms_path
	end


  private

    def alarm_params
      params.require(:alarm).permit(:content)
    end

end

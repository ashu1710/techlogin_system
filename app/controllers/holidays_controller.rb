class HolidaysController < ApplicationController


    def index
        @holidays = Holiday.all
        @holiday = Holiday.new
    end

    def create
        @holiday = Holiday.new(holiday_params)

        respond_to do |format|
            if @holiday.save
                format.js 
            else
                format.html { render :new }
                format.json { render json: @holiday, status: :200 }
            end
        end
    end


    :private 
    def holiday_params
        params.require(:holiday).permit(:name, :holiday_date, :holiday_type)
    end

end

class AppointmentsController < ApplicationController

    def index

    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def create

    end

    def edit

    end

    def update

    end

    def delete

    end
    
end
class AppointmentsController < ApplicationController

    def show
        @appt = Appointment.find_by_id(params[:id])
    end

end

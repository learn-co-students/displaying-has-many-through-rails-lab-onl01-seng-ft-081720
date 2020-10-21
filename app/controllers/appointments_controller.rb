class AppointmentsController < ApplicationController

  
    def show
        @appointment = Appointment.find_by_id(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id)
    end

end

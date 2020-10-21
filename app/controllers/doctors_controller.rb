class DoctorsController < ApplicationController
    before_action :set_doctor, only: :show # [:show, :edit, :update, :destroy]

    # def index 
    #     @tutors = Doctor.all
    # end

    def show
    end
     
    private

    def set_doctor
        @doctor = Doctor.find_by_id(params[:id])
    end

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end
end

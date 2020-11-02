class DoctorController < ActiveRecord::Base
    def show
        @doctor = Doctor.find(parmas[id])
    end
end
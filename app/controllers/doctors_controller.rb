class DoctorsController < ApplicationController
    def index
        @doctor = Doctor.all
    end
    
    def show
        @doctor = Doctor.find(params[:id])
    end
    
    def new
        @doctor = Doctor.new
    end
    
    def edit
        @doctor = Doctor.find(params[:id])
    end

    def create
        @doctor = Doctor.new(song_params)
    
        if @doctor.valid?
          @doctor.save
          redirect_to doctor_path(@doctor)
        else
          render :new
        end
    end
    
    def update
        @doctor = Doctor.find(params[:id])
    
        if @doctor.update(doctor_params)
          redirect_to doctor_path(@doctor)
        else
            render :edit
        end
    end

    def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
        redirect_to doctors_url
    end
    
    private
    
    def doctors_params
        params.require(:doctor).permit(:name, :department)
    end
end

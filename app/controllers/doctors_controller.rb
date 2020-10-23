class DoctorsController < ApplicationController

    def index

    end

    def show
        @doctor = Doctor.find(params[:id])
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
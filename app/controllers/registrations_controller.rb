class RegistrationsController < ApplicationController

    def create
        @reg = Registration.new(registration_params)
        if @reg.save 

           redirect_to course_path(params[:Course_id]), alert: 'Registered'
        else
            redirect_to course_path(params[:Course_id]), alert: 'Something went wrong'
        end
    end

    def destroy
        @reg =  Registration.where(Course_id: params[:Course_id], User_id: params[:User_id]).first
        @reg.destroy
    
        redirect_to course_path(params[:Course_id]),alert: 'Removed'
      end
    

    private 
    def registration_params    
        params.permit(:User_id, :Course_id,:avatar)
    end
end

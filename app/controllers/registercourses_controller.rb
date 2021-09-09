class RegistercoursesController < ApplicationController

        def create
            @reg = Registercourse.new(registration_params)
            if @reg.save 
    
               redirect_to course_path(params[:course_id]), alert: 'Registered'
            else
                redirect_to course_path(params[:course_id]), alert: 'Something went wrong'
            end
        end
    
        def destroy
            @reg =  Registercourse.where(course_id: params[:course_id], user_id: params[:user_id]).first
            @reg.destroy
        
            redirect_to course_path(params[:course_id]),alert: 'Removed'
          end
        
    
        private 
        def registration_params    
            params.permit(:user_id, :course_id)
        end
    
end

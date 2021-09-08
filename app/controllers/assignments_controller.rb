class AssignmentsController < ApplicationController
    def index   
        @assignments = Assignment.all   
     end   
        
     def new   
        @assignment = Assignment.new   
     end   
        
     def create   
        @assignment = Assignment.new(assignment_params)   
           
        if @assignment.save   
           redirect_to resumes_path, notice: "Successfully uploaded."   
        else   
           render "new"   
        end   
           
     end   
        
     def destroy   
        @assignment = Assignment.find(params[:id])   
        @assignment.destroy   
        redirect_to resumes_path, notice:  "Successfully deleted."   
     end   
        
     private   
        def assignment_params   
        params.require(:assignment).permit(:attachment)   
     end   
end

class CoursesController < ApplicationController
    #before_action :logged_in

    def index
      @courses = Course.all.order("courses.course_id")
    end
  
    def show
      @course = Course.find_by_id(params[:id])
    end
  
  
    def new
      @course = Course.new
      @inst = User.where("Teacher = ?", true)
    end
  
    def create
      @course = Course.new(course_params)
      
      if @course.save
        redirect_to(:controller => 'courses', :action => 'index')
      else
        render "error"
      end
    end
  
    def edit
      @course = Course.find_by_id(params[:id])
    end

    def update
      @course= Course.find_by_id(params[:id])
      if @course.update(course_params)
        redirect_to(:controller => 'courses', :action => 'index')
      else
        redirect_to(:controller => 'courses', :action => 'index')
      end
    end
  
  
    def destroy
      @course= Course.find_by_id(params[:id])
      @course.destroy
      redirect_to(:controller => 'courses', :action => 'index')
    end


    def error
      redirect_to(:controller => 'courses', :action => 'error')
    end

    private
    def course_params
      params.fetch(:course, {})
      params.require(:course).permit(:course_id, :course_title, :course_description)
    end
end

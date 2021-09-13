class FavoritesController < ApplicationController

    def create
        @fav = Favorite.new(favorite_params)
        if @fav.save 
           redirect_to courses_path(params[:course_id]), alert: 'Added to favorites'
        else
            redirect_to courses_path(params[:course_id]), alert: 'Something went wrong'
        end
    end

    def destroy
        @fav =  Favorite.where(course_id: params[:course_id], user_id: params[:user_id]).first
        @fav.destroy
    
        redirect_to courses_path(params[:course_id]),alert: 'Removed from favorites'
      end
    

    private 
    def favorite_params
        params.permit(:user_id, :course_id)
    end

end

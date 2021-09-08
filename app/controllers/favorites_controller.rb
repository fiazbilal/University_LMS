class FavoritesController < ApplicationController

    def create
        @fav = Favorite.new(favorite_params)
        if @fav.save 

           redirect_to course_path(params[:Course_id]), alert: 'Added to favorites'
        else
            redirect_to course_path(params[:Course_id]), alert: 'Something went wrong'
        end
    end

    def destroy
        @fav =  Favorite.where(Course_id: params[:Course_id], User_id: params[:User_id]).first
        @fav.destroy
    
        redirect_to course_path(params[:Course_id]),alert: 'Removed from favorites'
      end
    

    private 
    def favorite_params    
        params.permit(:User_id, :Course_id)
    end

end

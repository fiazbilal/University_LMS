class ProfilesController < ApplicationController
    def index
        @profile = Profile.find_by_id(params[:id])
    end
end

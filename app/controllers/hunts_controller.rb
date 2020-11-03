class HuntsController < ApplicationController

    def index 
        if params[:guide_id]
            set_guide
            @hunt = @guide.hunts
        else 
            @hunt = Hunt.all
      end
    end     

    def show 
        @hunt = Hunt.find(params[:id])
    private 

    def set_guide 
        @guide = Guide.find_by_id(params[:guide_id])
    end
end
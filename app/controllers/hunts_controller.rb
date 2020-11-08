class HuntsController < ApplicationController

    def index 
        if params[:guide_id]
            set_guide
            @hunt = @guide.hunts
        else 
            @hunt = Hunt.budget_hunts
      end
    end     

    def show 
        @hunt = Hunt.find(params[:id])
    end
    
    private 

    def set_guide 
        @guide = Guide.find_by_id(params[:guide_id])
    end
end
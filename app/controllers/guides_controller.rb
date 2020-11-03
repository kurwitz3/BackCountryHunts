class GuidesController < ApplicationController

    def index 
        @guide = Guide.all 
    end 

    def show 

    end 

end
class ReviewsController < ApplicationController 

    def index 
        if params[:hunt_id]
            @review = Hunt.find_by_id(params[:hunt_id]).reviews
        else 
            @review = Review.all
      end
    end  
    
     def new 
        @review = Review.new(hunt_id: params[:hunt_id])
     end 

     def create 
        @review = Review.new(reviews_params)
           @review.save 
            render "index"
        
     end 

    def show 
        @review = Review.find(params[:id])
    end
    private 

    

    def reviews_params 
     params.require(:review).permit(:title,:content,:user_id,:hunt_id)
    end 
end

 
class ReviewsController < ApplicationController 

    def index 
        if params[:hunt_id]
            @review = Hunt.find_by_id(params[:hunt_id]).reviews
        else 
            @review = Review.all
      end
    end  
    
     def new 
        @review = Review.new
     end 

     def create 
        @review = Review.new(reviews_params)
        
           if current_user.id == @review.user_id
             @review.save
            
            redirect_to  reviews_path
         else 
            flash[:alert] = "You can only make a review under your name"
            render '/hunts/new'
         end
     end 

    def show 
        @review = Review.find(params[:id])
    end
    private 

    

    def reviews_params 
     params.require(:review).permit(:title,:content,:hunt_id,:user_id)
    end 
end

 
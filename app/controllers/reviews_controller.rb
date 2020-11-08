class ReviewsController < ApplicationController
    include ReviewsHelper
    
    before_action :set_user, only:[:create] 
    before_action :logged_in_user, only:[:new,:index,:update,:edit]
    
    def index 
     if params[:hunt_id]
       @review = Hunt.find_by_id(params[:hunt_id]).reviews
     else 
        @user = current_user
      end
    end  
    
    def new 
     @review = Review.new
    end 

    def create
      @review = Review.new(reviews_params)
     if @review.save
         redirect_to  reviews_path
     else 
        render 'new' 
     end 
    end 
      
    def show 
      @review = Review.find(params[:id])
    end

    def edit
      @review = current_user.reviews.find(params[:id])
      if current_user.id == @review.user_id 
        render "edit"
      else 
        redirect_to root_path 
    end 
  end
    def update 
     @review = current_user.reviews.find(params[:id])
    if @review.update_attributes(title: params[:review][:title],content: params[:review][:content])
        redirect_to reviews_path 
    else 
      render "edit"
     end
    end 

    def destroy
      @review = Review.find(params[:id])
      if current_user.id == @review.user_id
       @review.delete
        redirect_to reviews_path
      else 
        redirect_to root_path 
    end 
  end
    
    private 


    def reviews_params 
     params.require(:review).permit(:title,:content,:hunt_id,:user_id)
    end 

    def set_user 
     params[:review][:user_id] = current_user.id
    end


end

 
module UsersHelper 

    def logged_in?
        !current_user.nil?
    end
    
    def logged_in_user
       unless logged_in?
          flash[:notice] = "Please log in to see your reviews."
          redirect_to new_user_session_path
       end
    end


end
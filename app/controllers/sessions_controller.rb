class SessionsController < ApplicationController

    #login
    def create
        # binding.pry
        user = User.find_by( username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, include: ['orders','orders.order_items','orders.order_items.product'], status: :ok        
        else 
            render json: { error: 'Invalid username or password'}, status: :unauthorized
        end
  
    end

    #logout
    def destroy
        user = User.find(session[:user_id])
        session.delete :user_id
        head :no_content
    end

    private




end

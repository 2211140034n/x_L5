class TweetsController < ApplicationController
    def index
<<<<<<< HEAD
        @tweets = Tweet.all.includes(:user)
=======
        @tweets = Tweet.all
>>>>>>> aa4e03b (push to render.com)
    end
    
    def new
        @tweet = Tweet.new
    end
    
    def create
        t = Tweet.new(message: params[:tweet][:message])
        t.user = User.find_by(uid: session[:login_uid])
        t.save
        redirect_to tweets_path
    end
      
    def destroy
        Tweet.find(params[:id]).destroy
        redirect_to tweets_path
    end
end

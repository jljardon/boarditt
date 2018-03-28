require './config/environment'

class ApplicationController < Sinatra::Base
   configure do
      set :views, 'app/views'
      enable :sessions
      set :session_secret, 'B0@rd6i77_P@55w0rD$3c&37'
   end

   get '/' do
      logged_in? ? (redirect '/posts') : (erb :index)
   end

   post '/login' do
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
         session[:user_id] = @user.id
         redirect '/posts'
      else
         redirect '/'
      end
   end

   get '/logout' do
      session.clear
      redirect '/'
   end

   helpers do
      def logged_in?
         !!session[:user_id]
      end

      def current_user
         User.find(session[:user_id])
      end
   end
end

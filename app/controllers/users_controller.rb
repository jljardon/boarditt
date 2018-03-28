class UsersController < ApplicationController
   get '/users/signup' do
      logged_in? ? (redirect '/posts') : (erb :'users/create_user')
   end

   post '/users/signup' do
     # binding.pry
      if params[:username].empty? || params[:email].empty? || params[:password].empty?
         redirect '/signup'
      else
         session[:user_id] = User.create(username: params[:username], password: params[:password], email: params[:email]).id
         redirect '/posts'
      end
   end
end

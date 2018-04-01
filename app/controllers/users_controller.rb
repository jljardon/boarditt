class UsersController < ApplicationController
  use Rack::Flash
  get '/users/signup' do
    logged_in? ? (redirect '/posts') : (erb :'users/create_user')
  end

  post '/users/signup' do
    if params[:username].empty? || params[:email].empty? || params[:password].empty?
      flash[:message] = 'Username, password and email fields cannot be empty!'
      redirect '/users/signup'
    elsif User.find_by(email: params[:email])
      flash[:message] = 'That email already exists in our records. Please <a href="/">login</a> or user another email.'
      redirect '/users/signup'
    elsif User.find_by(username: params[:username])
      flash[:message] = 'Username already registered, please choose another one.'
      redirect '/users/signup'
    else
      session[:user_id] = User.create(username: params[:username], password: params[:password], email: params[:email]).id
      redirect '/posts'
    end
  end

  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    # binding.pry
    logged_in? ? (erb :'users/show_user') : (redirect '/')
  end
end

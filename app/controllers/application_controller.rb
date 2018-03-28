require './config/environment'

class ApplicationController < Sinatra::Base
   configure do
      set :views, 'app/views'
      enable :sessions
      set :session_secret, 'B0@rd6i77_P@55w0rD$3c&37'
   end

   get '/' do
      erb :index
   end
end

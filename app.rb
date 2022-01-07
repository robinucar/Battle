require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end




    # Routes
    get '/' do
        erb :index
      end

    post '/names' do
        p params
        @first_player_name = params[:first_player_name]
        @second_player_name = params[:second_player_name]
        erb :play
    end

    #Start the server if this file is executed directly
    run! if app_file == $0
end

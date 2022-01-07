require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
    enable :sessions
    configure :development do
        register Sinatra::Reloader
    end




    # Routes
    get '/' do
        erb :index
    end

    get '/play' do
        p params
        @player_1_name = $player_1.name
        @player_2_name = $player_2.name
        erb :play
    end

    post '/names' do
        p params
        $player_1 = Player.new(params[:player_1_name])
        $player_2 = Player.new(params[:player_2_name])
        redirect '/play'
    end

    get '/attack' do
       @player_1_name = $player_1.name
       @player_2_name = $player_2.name
        erb :attack
    end
    #Start the server if this file is executed directly
    run! if app_file == $0
end

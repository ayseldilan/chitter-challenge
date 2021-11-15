require 'sinatra/base'
require 'sinatra/reloader'

class Chitter_twitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Chitter page working!'
  end

  get '/peep' do
    @peeps = Peep.all
    erb :'index'
  end

  run! if app_file == $0
end
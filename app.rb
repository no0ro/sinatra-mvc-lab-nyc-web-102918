require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do #CREATE/ reveives form data through params & renders results pg
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])

    erb :piggied
  end

end

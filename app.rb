require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  #reverse_name
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    @reversename
  end

end
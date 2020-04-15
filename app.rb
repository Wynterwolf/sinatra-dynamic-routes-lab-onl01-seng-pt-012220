require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  #reverse_name
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    @reversename
  end

  #square
  get '/square/:number' do
    @square = params[:number].to_i ** 2 
    @square.to_s 
  end
  
  #return single string with two local_variables
  get '/say/:number/:phrase' do
    string = ""
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    @number.times {string += "#{@phrase}\n" }
    string 
  end
  
end
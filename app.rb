require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    # show params's key and values in terminal.
    # puts params
    
    # assign user input, with key of "string", to a variable.
    original_string = params["string"]
    # create an instance variable and assign the reversed string.
    @reversed_string = original_string.reverse    

    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end
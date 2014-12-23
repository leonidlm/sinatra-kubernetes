require 'sinatra'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './items/item'

get '/' do
	erb :index
end

post '/submit' do
	@item = Item.new(params[:item])
	if @item.save
		redirect '/items'
	else
		"Sorry, there was an error!"
	end
end

get '/items' do
	@items = Item.all
	erb :items
end

after do
  # Close the connection after the request is done so that we don't
  # deplete the ActiveRecord connection pool.
  ActiveRecord::Base.connection.close
end

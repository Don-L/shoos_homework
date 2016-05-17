require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('models/order')



get '/shoos/preorder' do

  erb(:preorder)

end



post '/shoos/confirm' do

  @order = Order.new(params)

  @order.save

  erb(:confirm)

end



get '/shoos/all_orders' do

  @orders = Order.all

  erb(:all_orders)

end
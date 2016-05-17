require('pry-byebug')
require_relative('models/order')


SqlRunner.run("DELETE FROM orders;")

order1 = Order.new({'first_name' => 'John', 'last_name' => 'Shoemeister', 'size' => 7, 'quantity' => 5}).save

order2 = Order.new({'first_name' => 'Millicent', 'last_name' => 'Millipede', 'size' => 11, 'quantity' => 101}).save

orders = Order.all

binding.pry
nil
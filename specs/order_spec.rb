require('minitest/autorun')
require('minitest/rg')
require_relative('../models/order')

class TestOrder < Minitest::Test


  def setup

    options = {'first_name' => 'John', 'last_name' => 'Shoemeister', 'size' => 7, 'quantity' => 5}

    @order = Order.new(options)

  end



  def test_first_name

    assert_equal('John', @order.first_name)

  end



  def test_last_name

    assert_equal('Shoemeister', @order.last_name)

  end



  def test_size

    assert_equal(Fixnum, @order.size.class)
    assert_equal(7, @order.size)

  end



  def test_quantity

    assert_equal(Fixnum, @order.quantity.class)
    assert_equal(5, @order.quantity)

  end



end
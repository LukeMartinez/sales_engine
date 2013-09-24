gem 'minitest'
require 'time'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/customer'

class CustomerTest < Minitest::Test

  def test_has_id
    attributes = {:id => "1"}

    customer = Customer.new(attributes)
    assert_equal 1, customer.id
  end

  def test_had_first_name
    attribute = {:first_name => "frank"}

    customer = Customer.new(attribute)
    assert_equal "frank", customer.first_name
  end

  def test_has_last_name
    attribute = {:last_name => "jones"}

    customer = Customer.new(attribute)
    assert_equal "jones", customer.last_name
  end

  def test_created_at
    attributes = {:created_at => "2012-03-27 14:54:59 UTC"}

    customer = Customer.new(attributes)
    assert_equal Time.utc(2012, 3, 27, 14, 54, 59), customer.created_at
  end
  
  def test_updated_at
    attributes = {:updated_at => "2012-04-27 14:54:59 UTC"}

    customer = Customer.new(attributes)
    assert_equal Time.utc(2012, 4, 27, 14, 54, 59), customer.updated_at
  end

end

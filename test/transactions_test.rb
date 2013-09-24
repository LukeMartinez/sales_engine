gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/transactions'
require 'time'

class TransactionTest < Minitest::Test

  def test_has_id
    attributes = {:id => "1"}

    transaction = Transactions.new(attributes)
    assert_equal 1, transaction.id
  end

  def test_it_has_invoice_id
    attributes = {:invoice_id => "10"}

    transaction = Transactions.new(attributes)
    assert_equal "10", transaction.invoice_id
  end

  def test_that_it_has_a_credit_card_number
    attributes = {:credit_card_number => "4578347654323456"}

    transaction = Transactions.new(attributes)
    assert_equal "4578347654323456", transaction.credit_card_number
  end

  def test_that_it_has_a_result
    attributes = {:result => "failed"}

    transaction = Transactions.new(attributes)
    assert_equal "failed", transaction.result
  end

  def test_created_at
    attributes = {:created_at => "2012-03-27 14:54:59 UTC"}

    transaction = Transactions.new(attributes)
    assert_equal Time.utc(2012, 3, 27, 14, 54, 59), transaction.created_at
  end
  
  def test_updated_at
    attributes = {:updated_at => "2012-04-27 14:54:59 UTC"}

    transaction = Transactions.new(attributes)
    assert_equal Time.utc(2012, 4, 27, 14, 54, 59), transaction.updated_at
  end
end

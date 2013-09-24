class Transactions

  attr_reader :id, :invoice_id, :credit_card_number, :credit_card_expiration_date, :result

  def initialize(attributes)
    @id = attributes[:id].to_i
    @invoice_id = attributes[:invoice_id]
    @credit_card_number = attributes[:credit_card_number]
    @result = attributes[:result]
    @created_time = attributes[:created_at]
    @updated_time = attributes[:updated_at]
  end

  def created_at
    @created_at ||= Time.strptime(@created_time, "%Y-%m-%d %H:%M:%S %z")
  end

  def updated_at
    @updated_at ||= Time.strptime(@updated_time, "%Y-%m-%d %H:%M:%S %z" )
  end

end

class Currency

  def initialize(amount, currency)
    # puts "Testing for inventory"
    @amount = amount
    @currency = currency
  end

  def amount
    @amount
  end

  def currency
    @currency
  end

  def equal(other)
    @amount == other.amount && @currency == other.currency
  end

  def not_equal(other)
    @amount != other.amount || @currency != other.currency
  end

  def add(add)
    if @currency == add.currency
      new_amount = @amount + add.amount
      Currency.new(new_amount, @currency)
    else
      puts "DifferentCurrencyCodeError"
    end
  end

  def subtract(subtract)
    if @currency == subtract.currency
      new_amount = @amount - subtract.amount
      Currency.new(new_amount, @currency)
    else
      puts "DifferentCurrencyCodeError"
    end
  end

  def multiply(factor)
    if @currency == factor.currency
      amount.class == Fixnum || amount.class == Float
      new_amount = @amount * factor.amount
      new_amount = new_amount.to_f
      Currency.new(new_amount, @currency)
    else
      puts "DifferentCurrencyCodeError"
    end
  end
end

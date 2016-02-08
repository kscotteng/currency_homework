require './currency.rb'

first = Currency.new(100.0, :USD)
second = Currency.new(100.0, :USD)
third = Currency.new(100.0, :EUR)
fourth = Currency.new(50.0, :USD)
fifth = first.amount + second.amount
sixth = first.amount - fourth.amount
seventh = first.amount * fourth.amount

# ///test 1 - Testing 'equal' Method
  puts ""
    puts "Testing 'equal' Method:"
    puts "true = #{first.equal(second)}"
    puts ""
  puts "----------"

# ///test 2 - Testing 'not_equal' Method
  puts ""
    puts "Testing 'not_equal' Method:"
    puts "true = #{second.not_equal(third)}"
    puts "true = #{second.not_equal(fourth)}"
    puts "true = #{third.not_equal(fourth)}"
    puts ""
  puts "----------"

# ///test 3 - Testing 'add' Method
  puts ""
    puts "Testing 'add' Method:"
    puts "  100 USD + 100 USD = #{fifth} USD"
    puts "  New Object Location:  #{first.add(second)}"
    puts ""
    puts "  100 USD + 100 EUR = "
    second.add(third)
    puts ""
  puts "----------"

# ///test 4 - Testing 'subtract' Method
  puts ""
    puts "Testing 'subtract' Method:"
    puts "  100 USD - 50 USD = #{sixth} USD"
    puts "  New Object Location:  #{first.subtract(fourth)}"
    puts ""
    puts "  100 USD - 100 EUR =   USD != EUR"
    second.subtract(third)
    puts ""
  puts "----------"

# ///test 5 - Testing 'multiply' Method
  puts ""
    puts "Testing 'multiply' Method:"
    puts "  100 USD * 50 USD =  #{seventh} USD"
    puts "  New Object Location:  #{first.multiply(fourth)}"
    puts ""
    puts "  100 USD * 100 EUR =   USD != EUR"
    second.multiply(third)
    puts ""
  puts "----------"

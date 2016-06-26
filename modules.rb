module MyLib
  MY_CONSTANT = 'BBoy'

  def lib_out
    puts 'Put my library out there'
  end
end

# puts MyLib::MY_CONSTANT

class Test
  include MyLib
  def initialize
  end

  def let_out
    lib_out
    puts MY_CONSTANT
  end
end

test = Test.new
test.let_out
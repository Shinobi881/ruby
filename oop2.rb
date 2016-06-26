class Dog
  # Shorthand for methods to print these properties
  # attr_reader :name
  # attr_writer :name
  attr_accessor :name # Allows both reading and writing
  attr_reader :breed 
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public

  def bark
    puts 'Woof!'
  end

  private

  def howl
    puts 'howl'
  end

  def whine
    puts 'harrrf harrrf'
  end
end

bruno = Dog.new('Bruno', 'Bulldog')

bruno.bark

puts bruno.name # I can do this now by using the attr_...
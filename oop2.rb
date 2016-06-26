class Dog 
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public

  def bark
    puts 'Woof!'
  end

  def whine
    puts 'harrrf harrrf'
  end
  private

  def howl
    puts 'howl'
  end

end

bruno = Dog.new('Bruno', 'Bulldog')

# bruno.bark

bruno.whine
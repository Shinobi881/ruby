class Creature
  @@creature_count = 0 # Static class variable using '@@'
  def initialize(name)
    @name = name # Instance only variable using the '@'
    @@creature_count += 1 
  end
  
  $creature_class = 'Creature' # Global initialization from a class
  def fight
    return "Punch to the chops!"
  end

  def self.instances # Self is the context for methods
    @@creature_count
  end

  def say_my_name
   puts @name
  end
end


class Dragon < Creature
  def fight
    puts 'First, I\'ll burn you' 
    print 'then a '
    puts super # 'super' Inherit from parent class 
  end
end

falcore = Dragon.new('Falcore')

falcore.say_my_name
falcore.fight


dragon = Creature.new('Puff')
lion = Creature.new('Leão')

class Creature_team < Creature # Inheritance 
  def initialize 

  end

  def get_creature
    Creature.instances
  end
end

# felines = Creature_team.new

# puts dragon.say_my_name
# puts felines.fight

# -----------------------------
class Message
    @@messages_sent = 0
    def initialize(from, to)
        @from = from
        @to = to
        @@messages_sent += 1
    end
end

my_message = Message.new('Moose', 'Vy')

class Email < Message
    def initialize(from, to)
        super
    end
end
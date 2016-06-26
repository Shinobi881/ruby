# Initialize the computer class
class Computer
  @@users = {}
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files = {}
    @files[filename] = time
    puts "User #{@username} created #{filename} at #{time}"
  end

  def Computer.get_users
    puts @@users
  end
end

my_computer = Computer.new('Moose', 'Julia')

Computer.get_users

my_computer.create('codecademy')


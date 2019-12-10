# PHASE 2
def convert_to_int(str)
  #begin
  int = Integer(str)
  rescue ArgumentError
  #end
  int
end

# Instructions
# Friendly monster is really friendly and really likes coffee, so he'd like to give us another try, but only when we give him "coffee".

# First, handle the errors being thrown by #reaction in #feed_me_a_fruit.

# Note that #reaction throws errors receiving an argument that is not in FRUITS. Next, let's differentiate the errors thrown so our calling function, #feed_me_a_fruit can try to feed friendly monster again, but only when they've given it coffee.

# Now that we have different error types being thrown by #reaction we can do a little conditional logic in #feed_me_a_fruit to retry the failing block of code again, but only if it is a coffee-related error.



# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError

  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin 

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)

  rescue 
    if maybe_fruit == "coffee"
      retry
    else
      raise "It is not fruit!"
    end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name_checker(name)
    @yrs_known = five_years_checker(yrs_known)
    @fav_pastime = fav_pastime_checker(fav_pastime)
    
  end

  def name_checker(name) 
    raise "Enter a name" if name.length < 1
    return name 
  end

  def fav_pastime_checker(fav_pastime)
    raise "Enter past time" if fav_pastime.length < 1
    return fav_pastime
  end

  def five_years_checker(yrs)
    if yrs < 5
      raise "you are not my real friend"
    else
      return yrs
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end


end



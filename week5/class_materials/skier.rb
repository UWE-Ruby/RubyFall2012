class Skier
  attr_accessor :events # without this instance variable, there are no persistent properties. OH SNAAAAP. With this, you can call 'events' on a Skier class object and get an output!!!

  def initialize(events=[:gs, :downhill])
    @events = events  # when we make a skier object, that object will have access to the instance variable,
    # which is the variable with the @. 
    # when you pass parameters, they're only usable in that method, unless you have them instance variables.
    # att
  end

  def ski(event)
    "This skier is skiing #{event}"
  end
end
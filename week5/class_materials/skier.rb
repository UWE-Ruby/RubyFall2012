class Skier
  attr_accessor :events

  def initialize(events=[:gs, :downhill])
    @events = events
  end

  def ski(event)
    "This skier is skiing #{event}."
  end
end

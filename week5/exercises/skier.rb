class Skier
  attr_accessor :events

  def initialize(events=[:gs, :downhill])
    @events = events
  end

  def ski(event)
    put "This skier is skiing #{event}"
  end
end
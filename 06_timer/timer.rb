class Timer
  
  attr_accessor :seconds


  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

def time_string  # https://www.rubyguides.com/2012/01/ruby-string-formatting/
  while @seconds > 60
    @minutes = @minutes + 1
    @seconds = @seconds -60
  end
  while @minutes > 60
    @hours = @hours + 1
    @minutes = @minutes - 60
  end
  time_string = '%02d:%02d:%02d' % [@hours, @minutes, @seconds]
end
end

# timer = Timer.new
# timer.seconds = 8000
# timer.time_string
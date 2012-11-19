#!/usr/bin/env ruby

class Timer
  def self.time_code(&my_code)
      start_time = Time.now
      my_code.call #or yield (does the same thing)
      end_time = Time.now
      end_time - start_time
     
      end  
end

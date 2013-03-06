#!/usr/bin/env ruby

class Van

  def initialize
    @bikes = []
  end

  def collect(station)
    @bikes = @bikes | station.broken_bikes
    puts "Van: I collected some bikes" unless @bikes.empty?
    puts @bikes.inspect
    # @vans << station.broken.each
  end
end

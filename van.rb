#!/usr/bin/env ruby

class Van

  def initialize
    @bikes_in_van = []
  end

  def collect(station)
    @bikes_in_van << station.broken
    puts "Van: I collected some bikes" unless @bikes_in_van.empty?
    puts @bikes_in_van.inspect
    # @vans << station.broken.each
  end
end

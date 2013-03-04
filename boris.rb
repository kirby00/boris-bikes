#!/usr/bin/env ruby

# class Control

#   def initialize()
#     @bikes = bike
#   end

# end




class Bike
  
  def initialize(broken)
    @broken=broken
  end

  def is_broken?
    @broken == 1
  end
end

def scheme_with_bikes
  fleet = []
    10.times {fleet << Bike.new(rand(2))}
  fleet
end

fleet = scheme_with_bikes
puts fleet.count
fleet.pop
puts fleet.count


#!/usr/bin/env ruby

class Control

#setup the bike network with bikes, stations, people etc.
#run the bike scheme
#create a report

  def initialize()
    @fleet = create_fleet
    puts @fleet
  end

  def create_fleet
    fleet = []
      10.times {fleet << Bike.new(rand(2))}
    fleet
  end

end

class Bike
  attr_accessor :broken

  def initialize(broken)
    @broken=broken
  end

  def is_broken?
    @broken == 1
  end
end


control = Control.new


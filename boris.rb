#!/usr/bin/env ruby

class Control

#setup the bike network with bikes, stations, people etc.
#run the bike scheme
#create a report

  def initialize
    @fleet = create_fleet
  end

  def create_fleet
    fleet = []
      10.times {fleet << Bike.new}
    fleet
  end

  def create_report
      total_bikes = @fleet.count 
      broken_bikes = @fleet.count {|b| b.is_broken?}
      working_bikes = total_bikes-broken_bikes
      result = "total bikes #{total_bikes}\n" + "broken bikes #{broken_bikes}\n" + "working bikes #{working_bikes}"
  end    
end

class Bike
  attr_accessor :broken

  def initialize
    @broken = rand(2)
  end

  def is_broken?
    @broken == 1
  end
end

# Actual program running
instance_of_control_class = Control.new
puts instance_of_control_class.create_report

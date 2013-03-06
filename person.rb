#!/usr/bin/env ruby

class Person
  
  def initialize
    
  end  

  def has_bike?
    not @bike.nil?
  end

  def take_bike(station)
    @bike = station.release_bike
    puts "Person: I took a bike"
    # if station.bikes_at_station == 0
    #    puts "no bikes!" #and call van
    # end
  end

    #number of bikes at station goes down by 1
    #person status changes such that has_bike? == 1
    #declare probability that person wants to take bike
  def return_bike(station)
    station << @bike
    @bike=nil
    puts "Person: I returned a bike"
    #if you have a bike, you have to return it
  end

end



#!/usr/bin/env ruby



class Station

attr_accessor :name, :capacity, :bikes

  def initialize(name, capacity)
    @name = name
    @bikes = [] 
    @capacity = capacity
  end

  def has_bikes?
    !@bikes.empty?
  end

  def <<(bike)
    raise "full" if full?
    @bikes << bike
  end

  def full?
    @bikes.count == @capacity
    # puts "full"
  end

  # def bikes
   
  #   #bikes at station is equal to the starting number (==capacity?) minus:
  #   #people with bikes, bikes in garage, bikes in van
  # end

  def release_bike
    return "no bikes left" if !has_bikes?
    @bikes.pop
  end

  # def receive_bike
  #   return "full" if full?
    #  @bikes <<  
  # end

end



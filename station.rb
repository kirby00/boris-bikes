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
    @bikes << bike
  end

  # def bikes
   
  #   #bikes at station is equal to the starting number (==capacity?) minus:
  #   #people with bikes, bikes in garage, bikes in van
  # end

  def release_bike
    raise "no bikes left" if !has_bikes?
    @bikes.pop
  end

  def receive_bike
    raise "full" if has_bikes == @capacity
    @bikes.push 
  end

end



#!/usr/bin/env ruby



class Station

attr_accessor :name, :capacity, :bikes, :broken_bikes

  def initialize(name, capacity)
    @name = name
    @bikes = [] 
    @broken_bikes = []
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

  def broken
    @broken_bikes = @bikes.select{|b| b.is_broken?}
    @bikes -= @broken_bikes
    @broken_bikes
  end

  # def call_van
  #   @vans << broken.each  
  # end

  # def receive_bike
  #   return "full" if full?
    #  @bikes <<  
  # end

end



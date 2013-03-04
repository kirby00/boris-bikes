#!/usr/bin/env ruby

class Control

#setup the bike network with bikes, stations, people etc.
#run the bike scheme
#create a report

  def initialize
    @fleet = create_fleet
    @people = create_people
  end

  def create_fleet
    fleet = []
      10.times {fleet << Bike.new}
    fleet
  end

  def create_people
    people = []
      10.times {people << Person.new}
    people 
  end

  def create_report
      total_bikes = @fleet.count 
      broken_bikes = @fleet.count {|b| b.is_broken?}
      working_bikes = total_bikes-broken_bikes
      total_people = @people.count
      people_with_bikes = @people.count {|p| p.has_bike?}
      people_without_bikes = total_people-people_with_bikes
      result = "total bikes #{total_bikes}\n" + "broken bikes #{broken_bikes}\n" + "working bikes #{working_bikes}\n"
      result + "total people #{total_people}\n" + "people with bikes #{people_with_bikes}\n" + "people without bikes #{people_without_bikes}"
  end    
end

class Person
  
  def initialize
    @has_bike = rand(2)
    #how does this work??
  end  

  def has_bike?
    @has_bike == 1
  end

  def take_bike_from_station
    #declare probability that person wants to take bike
  end

  def return_bike_to_station
    #if you have a bike, you have to return it
  end

end


class Bike

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

# puts @people.inspect



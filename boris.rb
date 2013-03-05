#!/usr/bin/env ruby

class Control

#setup the bike network with bikes, stations, people etc.
#run the bike scheme
#create a report

attr_accessor 

  def initialize
    @fleet = create_fleet
    @people = create_people
    @stations = create_stations
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

  def create_stations
    stations = []
      stations << Station.new("Clapham", 20)
    stations
  end

  def take_bikes
    
     # if @bikes_at_station == 0
     #      puts "no bikes!" #and call van

        #     p.has_bike? == 0 
        #     p.take_bike_from_station 
     end
    
  def print_report
      total_bikes = @fleet.count 
      broken_bikes = @fleet.count {|b| b.is_broken?}
      working_bikes = total_bikes-broken_bikes
      total_people = @people.count
      people_with_bikes = @people.count {|p| p.has_bike?}
      people_without_bikes = total_people-people_with_bikes
      total_stations = @stations.count
      # show_stations = @stations.each do {|name, capacity| puts "#{name}, #{capacity}"}
      #tell me its name and capcity
      puts "Total bikes: #{total_bikes}"
      puts "Broken bikes: #{broken_bikes}"
      puts "Working bikes: #{working_bikes}"
      puts "Total people: #{total_people}"
      puts "People with bikes: #{people_with_bikes}"
      puts "People without bikes #{people_without_bikes}" 
      puts "Number of stations: #{total_stations}" 
      puts "Stations:"
          @stations.each do |station|
           puts "#{station.name}, #{station.capacity}, #{station.bikes_at_station}"
          end
      # result = "total bikes #{total_bikes}\n" + "broken bikes #{broken_bikes}\n" + "working bikes #{working_bikes}\n"
      # result + "total people #{total_people}\n" + "people with bikes #{people_with_bikes}\n" + "people without bikes #{people_without_bikes}\n" + "number of stations #{total_stations}\n" + "stations #{show_stations}"
  end    
end

class Person
  
  def initialize
    @has_bike = 0
    #how does this work??
  end  

  def has_bike?
    @has_bike == 1
  end

  def take_bike_from_station
    @has_bike += 1
  end
    #number of bikes at station goes down by 1
    #person status changes such that has_bike? == 1
    #declare probability that person wants to take bike
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

class Station

attr_reader :name, :capacity, :bikes_at_station

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
  end

  def bikes_at_station
    @bikes_at_station = 0 
    #bikes at station is equal to the starting number (==capacity?) minus:
    #people with bikes, bikes in garage, bikes in van
  end
end

# Actual program running
instance_of_control_class = Control.new
# puts instance_of_control_class.create_report
instance_of_control_class.take_bikes
instance_of_control_class.print_report



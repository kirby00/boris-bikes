#!/usr/bin/env ruby
  
class Control

#setup the bike network with bikes, stations, people etc.
#run the bike scheme
#create a report

attr_accessor 

  def initialize
    # @fleet = create_fleet
    @people = create_people
    @stations = create_stations_with_bikes
  end

  # def create_fleet
  #   fleet = []
  #     10.times {fleet << Bike.new}
  #   fleet
  # end

  def create_people
    people = []
      10.times {people << Person.new}
    people 
  end

  def create_stations_with_bikes
    stations = []
    station = Station.new("Clapham", 20)
    10.times{ station << Bike.new }
    stations << station
    stations
  end
    
  def people_without_bikes
    @people.reject{|p| p.has_bike?}
  end

  def people_with_bikes
    @people.select{|p| p.has_bike?}
  end

  def take_bike
    station = @stations.first
    people_without_bikes.each do |p| 
      p.take_bike(station) if rand(3).zero? && station.has_bikes?
    end
  end

  def return_bike
  end

  def print_report
      # total_bikes = @fleet.count 
      # broken_bikes = @fleet.count {|b| b.is_broken?}
      # working_bikes = total_bikes-broken_bikes
      total_people = @people.count
      total_stations = @stations.count
      # show_stations = @stations.each do {|name, capacity| puts "#{name}, #{capacity}"}
      #tell me its name and capcity
      # puts "Total bikes: #{total_bikes}"
      # puts "Broken bikes: #{broken_bikes}"
      # puts "Working bikes: #{working_bikes}"
      puts "Total people: #{total_people}"
      # puts "People with bikes: #{people_with_bikes}"
      puts "People without bikes #{people_without_bikes.count}" 
      puts "Number of stations: #{total_stations}" 
      puts "Stations:"
          @stations.each do |station|
           puts "#{station.name}, #{station.capacity}, #{station.bikes.count}"
          end
      # result = "total bikes #{total_bikes}\n" + "broken bikes #{broken_bikes}\n" + "working bikes #{working_bikes}\n"
      # result + "total people #{total_people}\n" + "people with bikes #{people_with_bikes}\n" + "people without bikes #{people_without_bikes}\n" + "number of stations #{total_stations}\n" + "stations #{show_stations}"
  end    
end







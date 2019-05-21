class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    ## get all of my rides
    ## from the rides, get the drivers
    rides.map { |ride| ride.driver }
  end

  def total_distance
    ## get all the rides belonging to this user
    ## from the rides, add up the distances
    ## return the distance
    total_distance = 0
    rides.each do |ride|
      total_distance += ride.distance
    end
    total_distance
  end

  def premium_member?
    total_distance > 100
  end

  ## class methods:
  def self.all
    @@all
  end

  def self.premium_members
    ## go through all of the passengers
    ## check to see if the total distance for passenger is over 100
    ### if over 100 put them in array
    ### otherwise, ignore them
    ## return the array

    members = []
    all.each do |passenger|
      members << passenger if passenger.premium_member?
    end
    members
  end
end

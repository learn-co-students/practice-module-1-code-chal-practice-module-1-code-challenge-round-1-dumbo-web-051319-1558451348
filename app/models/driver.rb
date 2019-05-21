class Driver
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def passenger_names
    passenger_names = []
    Ride.all.map do |ride|
      if self.name == ride.driver.name
        passenger_names << ride.passenger.name
      end
    end
    passenger_names.uniq

    rides.map { |ride| ride.passenger.name }.uniq
    # get all the rides
    # from rides, get all the passengers
    # from passengers, get their names
  end

  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  def total_distance
    total = 0
    rides.each { |ride| total += ride.distance }
    total

    ## get all the rides
    ## get only the distances from the rides
    ## add up all the distances, and return the sum
  end

  def self.all
    @@all
  end

  def self.mileage_cap(distance)
    ## look at all the drivers
    ## if driver's total distance(?) is greater than argument,
    ## then put them in an array
    capped_drivers = []
    self.all.each do |driver|
      if driver.total_distance > distance.to_f
        capped_drivers << driver
      end
    end
    capped_drivers
    self.all.select { |driver| driver.total_distance > distance.to_f } 
  end
end
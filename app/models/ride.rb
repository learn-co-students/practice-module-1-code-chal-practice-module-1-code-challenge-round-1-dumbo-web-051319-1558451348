class Ride
  attr_reader :passenger, :driver, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance.to_f
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    # add all the numnbers up
    # then divide by the amount of numbers

    # average = self.all.map do |ride|
    #   ride.distance
    # end
    # sum = average.inject { |sum, distance| sum + distance  }
    # sum / average.size

    counter = 0
    total_distance = 0

    @@all.each do |ride|
      total_distance += ride.distance
      counter += 1
    end
    average_distance = total_distance / counter

  end

end
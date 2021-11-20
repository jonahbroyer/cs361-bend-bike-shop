class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  # Price should be (base price of the bike) + ($2 * weight of the bike) + ($2 * weight of the luggage)
  def price
    self.bike.price + self.bike_weight * 2 + self.luggage_weight * 2
  end

  def bike_weight
    self.bike.weight
  end

  def luggage_weight
    self.bike.luggage.weight
  end

  def total_weight
    bike_weight + luggage_weight
  end

end

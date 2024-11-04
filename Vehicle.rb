class Vehicle
  attr_accessor :fuel_level, :mileage

  def initialize(fuel_level, mileage)
    @fuel_level = fuel_level
    @mileage = mileage
  end

  def calculate_mileage(distance, fuel_used)
    distance / fuel_used
  end

  def check_fuel
    puts "Current fuel level: #{@fuel_level}"
  end
end

class Car < Vehicle
  def air_conditioning
    puts "Air conditioning is ON"
  end
end

class Truck < Vehicle
  def load_capacity
    puts "Checking load capacity"
  end
end

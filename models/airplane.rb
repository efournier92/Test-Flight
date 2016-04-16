class Airplane
  attr_reader :type, :wing_loading, :horsepower, :start, :flying
  attr_accessor :fuel

  LOW = "You don't have enough fuel"

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @start = false
    @flying = false
    @fuel = 50
  end

  def start
    if check_fuel(10) == false
      LOW
    elsif @start == false
      @start = true
    else
      'Engine is already running'
    end
  end

  def takeoff
    if check_fuel(10) == false
      LOW
    elsif @start == false
      'Engine must be on for takeoff'
    else
      @fuel -= 20
      @flying = true
    end
  end

  def land
    if check_fuel(10) == false
      LOW
    elsif @flying == false
      "You can't land a plane that's on the ground!"
    else
      @fuel -= 10
      @flying = false
      'The plane landed safely'
    end
  end

  def check_fuel(fuel_used)
    fuel_left = @fuel - fuel_used
    if fuel_left <= 0
      false
    else
      true
    end
  end
end

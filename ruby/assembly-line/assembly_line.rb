class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    produced_cars = @speed * 221

    if @speed >= 1 && @speed <= 4
      produced_cars
    elsif @speed >= 5 && @speed <= 8
      Float(produced_cars * 0.9)
    elsif @speed == 9
      Float(produced_cars * 0.8)
    elsif @speed == 10
      Float(produced_cars * 0.77)
    end
  end

  def working_items_per_minute
    Integer(production_rate_per_hour / 60)
  end
end

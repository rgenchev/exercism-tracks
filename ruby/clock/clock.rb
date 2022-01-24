class Clock
  attr_accessor :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = calculate_hour(hour, minute)
    @minute = calculate_minute(minute)
  end

  def to_s
    format_time(@hour, @minute)
  end

  def +(other_object)
    temp_minute = minute + other_object.minute

    final_hour = calculate_hour(hour + other_object.hour, temp_minute)
    final_minute = calculate_minute(temp_minute)
    
    format_time(final_hour, final_minute)
  end

  def -(other_object)
    temp_minute = minute - other_object.minute

    final_hour = calculate_hour(hour - other_object.hour, temp_minute)
    final_minute = calculate_minute(temp_minute)
    
    format_time(final_hour, final_minute)
  end

  def ==(other_object)
    hour == other_object.hour && minute == other_object.minute
  end

  private

  def calculate_hour(hour, minute)
    if minute >= 60
      (hour + (minute / 60)) % 24
    elsif minute < 0
      (hour - (minute / 60).abs) % 24
    else
      hour % 24
    end
  end

  def calculate_minute(minute)
    minute % 60
  end

  def format_time(hour, minute)
    "#{sprintf '%02d', hour}:#{sprintf '%02d', minute}"
  end
end

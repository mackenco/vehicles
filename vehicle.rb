class Vehicle

  attr_accessor :max_passengers, :age, :manufacturer, :model_num

  def initialize(max_passengers, age, manufacturer, model_num)
    @max_passengers, @age, @manufacturer, @model_num = 
      max_passengers, age, manufacturer, model_num
  end

  def electric?
    false
  end

  def weapons?
    false
  end
end

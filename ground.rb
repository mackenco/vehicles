class Ground < Vehicle
  attr_accessor :wheel_num

  def initialize(wheel_num, max_passengers, age, manufacturer, model_num)
    @wheel_num = wheel_num
    super(max_passengers, age, manufacturer, model_num)
  end
end

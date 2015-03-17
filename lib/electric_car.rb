require_relative './electric'

class ElectricCar < Car
  include Electric

  def initialize(age, manufacturer, model_num)
    super(age, manufacturer, model_num)
  end
end


require_relative './electric'

class ElectricTank < Tank
  include Electric

  def initialize(age, manufacturer, model_num)
    super
  end
end

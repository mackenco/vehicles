require_relative './electric'

class ElectricMotorcycle < Motorcycle
  include Electric, Combat

  def initialize(age, manufacturer, model_num)
    super
  end
end


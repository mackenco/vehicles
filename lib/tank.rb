require_relative './combat'

class Tank < Ground
  include Combat

  attr_accessor :remaining_ammo, :MAX_AMMO

  def initialize(age, manufacturer, model_num)
    @MAX_AMMO = 50
    @remaining_ammo = @MAX_AMMO
    super(0, 8, age, manufacturer, model_num)
  end
end

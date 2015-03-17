require './combat.rb'
require './electric.rb'

require './person.rb'
require './vehicle.rb'

require './air.rb'
require './plane.rb'
require './helicopter.rb'
require './quadcopter.rb'

require './ground.rb'
require './car.rb'
require './electric_car.rb'
require './motorcycle.rb'
require './electric_motorcycle.rb'
require './tank.rb'
require './electric_tank.rb'

ecar = ElectricCar.new(10, "Honda", "ABCD")
p "Electric Car"
p ecar.wheel_num
p ecar.max_passengers
p ecar.electric?
puts

car = Car.new(10, "Toyota", "ABCD")
p "Car"
p car.wheel_num
p car.max_passengers
p car.electric?
p car.weapons?
puts

t = Tank.new(2, "Mercedes", "XYZ")
p "Tank"
p t.wheel_num
p t.max_passengers
p t.electric?
p t.weapons?
p t.shoot!
p t.remaining_ammo
p t.reload!
p t.remaining_ammo

# g = Ground.new(69, 10)


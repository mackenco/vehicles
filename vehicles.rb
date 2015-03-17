require_relative 'lib/combat'
require_relative 'lib/electric'

require_relative 'lib/person'
require_relative 'lib/vehicle'

require_relative 'lib/air'
require_relative 'lib/plane'
require_relative 'lib/helicopter'
require_relative 'lib/quadcopter'

require_relative 'lib/ground'
require_relative 'lib/car'
require_relative 'lib/electric_car'
require_relative 'lib/motorcycle'
require_relative 'lib/electric_motorcycle'
require_relative 'lib/tank'
require_relative 'lib/electric_tank'

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


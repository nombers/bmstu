class Vehicle
    attr_accessor :odometr, :gas_used

    def accelerate
        puts "Foor it!"
    end

    def sound_horn
        puts "Beep! Beep!"
    end

    def steer
        puts "Turn front 2 wheels."
    end

    def mileage
        return @odometr / @gas_used
    end

end

class Car < Vehicle
end

class Truck < Vehicle

    attr_accessor :cargo

    def load_bed(contents)
        puts "Securing #{ contents } in the truck bed."
        @cargo = contents
    end

end

class Motorcycle < Vehicle
end

truck = Truck.new
truck.accelerate
truck.steer

car = Car.new
car.odometr = 11432
car.gas_used = 366

puts "Lifetime.MPG: #{ car.mileage }"

putc "\n"

truck_bed = Truck.new
truck_bed.load_bed("259 bouncy balls")
puts "The truck is carrying #{ truck_bed.cargo }"

putc "\n"

car_atrubut = Car.new
puts car_atrubut.instance_variables

car_atrubut.odometr = 22914
car_atrubut.gas_used = 728
puts car_atrubut.instance_variables
# Challenges
# Before starting the implemention, copy each story into the editor as a comment, and use the function recipe to guide the implementation of each method
#
# Stories
# Story: As a programmer, I can make a vehicle. Hint: Create a class called Vehicle, and create a variable called my_vehicle which contains an object of class Vehicle.

#
# Story: As a programmer, I can make a car. Hint: Create a class called Car, and create a variable called my_car which contains an object of class Car.
#

# Story: As a programmer, I can tell how many wheels a car has; default is four. Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
#

# Story: As a programmer, I can make a Tesla car. Hint: Create an variable called my_tesla which is of class Tesla which inherits from class Car.
#

# Story: As a programmer, I can make a Honda car.
# #
#
# class Honda < Car
#     def initialize
#         super()
#     end
#
#     def get_type
#         'Honda'
#     end
# end
#
# p my_tesla = Honda.new
# p my_tesla.get_wheels
# p my_tesla.get_type
#
# # Story: As a programmer, I can make a Toyota car.
# #
#
# class Toyota < Car
#     def initialize
#         super()
#     end
#
#     def get_type
#         'Honda'
#     end
# end
#
# p my_tesla = Toyota.new
# p my_tesla.get_wheels

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change. Hint: Make model year part of the initialization.

# p my_new_car_2 = Vehicle.new(1996)
# p my_new_car_2.model_year
# p my_new_car_2.model_year = 1999
# p my_new_car_2.model_year

#
# Story: As a programmer, I can turn on and off the lights on a given Vehicle. Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
#
# class Vehicle
#     def initialize(model_year)
#         @model_year = model_year
#         @lights = "off"
#     end
#
#     def model_year
#         @model_year
#     end
#
#     def model_year= (model_year)
#         @model_year = model_year
#     end
#
#     def lights
#         @lights
#     end
#
#     def lights_switch
#         if @lights == "off"
#             @lights = "on"
#         elsif @lights == "on"
#             @lights = "off"
#         end
#     end
# end

# p my_vehicle_2 = Vehicle.new(0)
# p my_vehicle_2.lights
# p my_vehicle_2.lights_switch
# p my_vehicle_2.lights


# Story: As a programmer, I can determine if the lights are on or off. Lights start in the off position.
#
# class Vehicle
#     def initialize(model_year)
#         @model_year = model_year
#         @lights = false
#     end
#
#     def model_year
#         @model_year
#     end
#
#     def model_year= (model_year)
#         @model_year = model_year
#     end
#
#     def lights
#         @lights
#     end
#
#     def lights_switch
#         @lights = !@lights
#     end
# end
#
# p my_vehicle_3 = Vehicle.new(0)
# p my_vehicle_3.lights
# p my_vehicle_3.lights_switch
# p my_vehicle_3.lights_switch

# You should be able to test the car now:
# vehicle = Vehicle.new(...)
# vehicle.lights_on # should return false because they start false
# vehicle.lights_on = true # this should change the lights to true
# vehicle.lights_on # should now return true
# vehicle.lights_on = false # this should change the lights to false
# vehicle.lights_on? # should return false

# p my_vehicle_4 = Vehicle.new(2000)
# p my_vehicle_4.lights_on # should return false because they start false
# p my_vehicle_4.lights_on = true # this should change the lights to true
# p my_vehicle_4.lights_on # should now return true
# p my_vehicle_4.lights_on = false # this should change the lights to false
# p my_vehicle_4.lights_off? # should return true

# Story: As a programmer, I can signal left and right. Turn signals starts off.
# #
# class Vehicle
#     def initialize(model_year)
#         @model_year = model_year
#         @lights = false
#         @signals = "off"
#     end
#
#     def signal_left
#         @signals = "left"
#     end
#
#     def signal_right
#         @signals = "right"
#     end
#
#     def signal_off
#         @signals = "off"
#     end
#
#     def signals
#         @signals
#     end
#
#     def model_year
#         @model_year
#     end
#
#     def model_year= (model_year)
#         @model_year = model_year
#     end
#
#     def lights_on=(light_status)
#         @lights = light_status
#     end
#
#     def lights_off?
#         if @lights == false
#             true
#         elsif @lights == true
#             false
#         end
#     end
#
#     def lights_switch
#         @lights = !@lights
#     end
# end

# p my_vehicle_5 = Vehicle.new(2000)
# p my_vehicle_5.signal_left
# p my_vehicle_5.signals
# p my_vehicle_5.model_year = 2001

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
#

class Vehicle
    def initialize(model_year)
        @model_year = model_year
        @lights = false
        @signals = "off"
        @speed = 0
    end

    def speed
        @speed
    end

    def signal_left
        @signals = "left"
    end

    def signal_right
        @signals = "right"
    end

    def signal_off
        @signals = "off"
    end

    def signals
        @signals
    end

    def model_year
        @model_year
    end

    def model_year= (model_year)
        @model_year = model_year
    end

    def lights_on=(light_status)
        @lights = light_status
    end

    def lights_off?
        if @lights == false
            true
        elsif @lights == true
            false
        end
    end

    def lights_switch
        @lights = !@lights
    end
end


class Car < Vehicle
    def initialize(model_year)
        super(model_year)
        @wheels = 4
        @speed = 0
    end

    def accelerate
        @speed += 10
    end

    def braking
        @speed -= 7
    end

    def speed
        @speed
    end

    def get_wheels
        @wheels
    end

    def information
        "Speed:#{@speed}  Wheels:#{@wheels}"
    end
end

# p my_car1 = Car.new(1994)

class Tesla < Car
    def initialize(model_year)
        super(model_year)
    end

    def model
        'Tesla'
    end

    def sort_value
        model+model_year.to_s
    end
end

class Toyota < Car
    def initialize(model_year)
        super(model_year)
    end

    def model
        'Toyota'
    end

    def sort_value
        model+model_year.to_s
    end
end

class Honda < Car
    def initialize(model_year)
        super(model_year)
    end

    def model
        'Honda'
    end

    def sort_value
        model+model_year.to_s
    end
end

# p my_tesla = Tesla.new(2990)
# p "speed: #{my_tesla.speed}"
# p my_tesla.accelerate
# p "new speed: #{my_tesla.speed}"
# p my_tesla.braking
# p "new speed after brake : #{my_tesla.speed}"
# p my_tesla.information

 toyota_1 = Toyota.new(1)
 toyota_2 = Toyota.new(2)
 toyota_3 = Toyota.new(3)

 tesla_1 = Tesla.new(1)
 tesla_2 = Tesla.new(2)
 tesla_3 = Tesla.new(3)

 honda_1 = Honda.new(1)
 honda_2 = Honda.new(2)
 honda_3 = Honda.new(3)

car_collection = [toyota_1, toyota_2 ,toyota_3,
                  tesla_1, tesla_2, tesla_3,
                  honda_1, honda_2, honda_3]

# p car_collection_year = car_collection.map { |car_instance|
#                                                 car_instance.model_year
#                                             }.sort

# p car_collection_year = car_collection.map { |car_instance|
#                                                 car_instance.model_year
#                                             }.sort
# p car_collection_by_model = car_collection.sort{ |current_car_instance, next_car_instance|
#     current_car_instance.model <=> next_car_instance.model
# }
#
# p car_collection_by_model_reverse = car_collection.sort{ |current_car_instance, next_car_instance|
#     current_car_instance.model <=> next_car_instance.model
# }.sort{
#     |current_car_instance, next_car_instance|
#         current_car_instance.model_year <=> next_car_instance.model_year
# }.map{|current_car_instance|
#     [current_car_instance.model, current_car_instance.model_year]
# }

p car_collection_by_model_reverse = car_collection.sort{ |current_car_instance, next_car_instance|
   current_car_instance.model_year <=> next_car_instance.model_year
}.sort{
   |current_car_instance, next_car_instance|
       current_car_instance.model <=> next_car_instance.model
}.map{|current_car_instance|
   [current_car_instance.model, current_car_instance.model_year]
}
#
# p car_collection_by_model_reverse = car_collection.sort{ |current_car_instance, next_car_instance|
#    current_car_instance.model_year <=> next_car_instance.model_year
# }.sort{
#    |current_car_instance, next_car_instance|
#        current_car_instance.model <=> next_car_instance.model
# }.map{|current_car_instance|
#    [current_car_instance.model, current_car_instance.model_year]
# }

p car_collection_by_year = car_collection.sort{ |current_car_instance, next_car_instance|
    model_model_comparison = current_car_instance.model <=> next_car_instance.model
    model_year_comparison = current_car_instance.model_year <=> next_car_instance.model_year

    if (model_model_comparison != 0)
         model_model_comparison
    elsif (model_year_comparison != 0)
        model_year_comparison
    end
}.map{|current_car_instance|
   [current_car_instance.model, current_car_instance.model_year]
}

p car_collection_by_year = car_collection.sort{ |current_car_instance, next_car_instance|
    current_car_instance.sort_value <=> next_car_instance.sort_value
}.map{|current_car_instance|
   [current_car_instance.model, current_car_instance.model_year]
}

# p car_collection_by_year = car_collection.sort{ |current_car_instance, next_car_instance|
#     "#{current_car_instance.model}#{current_car_instance.model_year}" <=>  "#{next_car_instance.model}#{next_car_instance.model_year}"
# }.map{|current_car_instance|
#    [current_car_instance.model, current_car_instance.model_year]
# }

# def sort_model_then_year(car_collection)
#
#     sorted = true
#
#     while sorted
#         sorted = false
#         i = 0
#
#         while i < car_collection.length - 1
#             current_car_instance = car_collection[i]
#             next_car_instance = car_collection[i + 1]
#
#             p model_compare_num = current_car_instance.model <=> next_car_instance.model
#
#             i += 1
#         end
#
#     end
# end
# sort_model_then_year(car_collection)
# #
# p car_collection_by_model_ then_year = car_collection.sort_by{ |current_car_instance|
#     [current_car_instance.model, current_car_instance.model_year]
# }

# p car_collection_by_model_ then_year = car_collection.sort_by{ |current_car_instance| current_car_instance.model}


# Story: As a programmer, I can speed my Teslas up by 10 per acceleration.
#
# Story: As a programmer, I can slow my Teslas down by 7 per braking.
#
# Story: As a programmer, I can speed my Hondas up by 2 per acceleration.
#
# Story: As a programmer, I can slow my Hondas down by 1.25 per braking.
#
# Story: As a programmer, I can speed my Toyotas up by 7 per acceleration.
#
# Story: As a programmer, I can slow my Toyotas down by 5 per braking.
#
# Story: As a programmer, I can call upon a car to tell me all it's information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
#
# Story: As a programmer, I can keep a collection of two of each kind of vehicle, all from different years. Hint: Create two of each vehicles, all from different model years, and put them into an Array.
#
# Story: As a programmer, I can sort my collection of cars based on model year.
#
# Story: As a programmer, I can sort my collection of cars based on model. Hint: Sort based on class name.
#
# Story: As a programmer, I can sort my collection of cars based on model and then year. Hint: Find out how the spaceship operator can help you with an array.
#

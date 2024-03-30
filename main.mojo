@value
struct Engine:
    var type: String
    var horsepower: Int
    fn __init__(inout self, type: String, horsepower: Int):
        self.type = type
        self.horsepower = horsepower

struct Car:
    var make: String
    var model: String
    var year: Int
    var engine: Engine
    fn __init__(inout self, make: String, model: String, year: Int, engine: Engine):
        self.make = make
        self.model = model
        self.year = year
        self.engine = engine
    fn get_car_info(self) -> String:
        return "Car: " + self.make + " " + self.model + " " + String(self.year) + " Engine: " + self.engine.type + " " + String(self.engine.horsepower)

fn main():
    var my_engine = Engine("V8", 400)
    var my_car = Car("Chevy", "Camaro", 2022, my_engine)
    print(my_car.get_car_info())
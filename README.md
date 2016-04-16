##Test Flight

This project contains code I used to help familiarize myself with writing and organizing RSpec tests. Throughout the project, I use the metaphor of implementing an `Airplane` class to drive development.

`airplane.rb` contains a class for instances of Airplane. The class is initialized with:
* Type
* Wing Loading
* Horsepower

Instantiating an airplane object looks like this:
```ruby
my_plane = Airplane.new('Boeing', 10, 150)
```

All code is covered by the file in `spec/models/airplane_spec.rb`.

The `Airplane` class has methods and unit tests for the following:

1. All plane attributes are accessible after creating an airplane object.
2. `#start` turns on the engine if it is not already running, and returns whether the engine was just started or if it was already running.
3. `#takeoff` changes plane's state to flying. The plane can only take off if the engine is already running. Returns whether or not the plane has taken off.
4. `#land` changes plane's state to landed. The plane can only land if it is currently flying. Returns whether or not the plane landed successfully.
5. `#check_fuel` returns `true` or `false` based on whether the plane has enough fuel to perform the requested action.
* `#start` consumes 10 gallons of fuel
* `#takeoff` consumes 20 gallons of fuel
* `#land` consumes 10 gallons of fuel

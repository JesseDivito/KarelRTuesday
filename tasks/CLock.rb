#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Dials"
require_relative "../karel/robota"

# a task for a big truck asshole
def task()
  world = Robota::World
  world.read_world("../worlds/LineSweep.txt")

  karel = Handle.new(9, 6, Robota::WEST, 100)
  karel.SquareSimbol
  world.show_world_with_robots(1, 5, 10, 10)
  karel.display()

end

if __FILE__ == $0
  if $graphical
     screen = window(10, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
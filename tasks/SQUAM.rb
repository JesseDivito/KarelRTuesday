#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Sqw_am"
require_relative "../karel/robota"

# a task for a line sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/LineSweep.txt")

  karel = Sqwam.new(1, 5, Robota::NORTH, 100)
  karel.SquareSimbol
  world.show_world_with_robots(1, 5, 6, 6)
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
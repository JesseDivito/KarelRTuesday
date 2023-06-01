#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "tree_sweeper"
require_relative "../karel/robota"

# a task for a line sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/LineSweep.txt")

  karel = TreeSweep.new(2, 3, Robota::NORTH, INFINITY)
  karel.the_tree
  world.show_world_with_robots(3, 3, 6, 6)
  karel.display()

end

if __FILE__ == $0
  if $graphical
     screen = window(12, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
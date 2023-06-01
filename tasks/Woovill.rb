#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Grinch"
require_relative "../karel/robota"

# a task for a line sweeper
def task()
  world = Robota::World
  world.read_world("../worlds/grinch.kwld")

  karel = UglyAssGreenGuy.new(12, 2, Robota::NORTH, INFINITY)
  world.show_world_with_robots(3, 3, 6, 6)
  karel.night_woovill
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
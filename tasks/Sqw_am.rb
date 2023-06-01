#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to place many beepers in a straight line.
class Sqwam < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def bird_place
      move
      put_beeper
      turn_left
      move
      turn_right
      move
      put_beeper
      turn_left
      move
      turn_right
      move
      put_beeper
      turn_left
      move
      turn_right
      move
      put_beeper
      turn_left
      move
      turn_right
    end

    def sweep_five
      bird_place
    end
  
 def run_task
    bird_beeper
  end




end
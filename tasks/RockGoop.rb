#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to place many beepers in a straight line.
class SideWalk < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def ItsBeingABitch
      put_beeper
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

    def SquareSimbol
      ItsBeingABitch
      move
    end
  
 def run_task
    SquareSimbol
  end




end
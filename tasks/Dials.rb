#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to place many beepers in a straight line.
class Handle < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def bird_place
      put_beeper
      move
      put_beeper
      turn_left
      move
      put_beeper
      move
      put_beeper
      move
      turn_right
      put_beeper
      move
      put_beeper
      move
      put_beeper
      move
      turn_left


    end

    def SquareSimbol
      bird_place
      bird_place
      bird_place
      bird_place
    end
  
 def run_task
    SquareSimbol
  end




end
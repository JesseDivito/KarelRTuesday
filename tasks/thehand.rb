#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../tasks/beeper_sweeper"
require_relative "../mixins/turner"
# A class whose robots know how to place many beepers in a straight line.
class Hand < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def row_sweep
      sweep_five
      turn_right
      move
      turn_right
      move
      move
      move
      move
      move
      turn_around
    end

    def ZAHANDO
     row_sweep
     row_sweep
     row_sweep
     row_sweep
     row_sweep
    end
  
 def run_task
    ZAHANDO
  end




end
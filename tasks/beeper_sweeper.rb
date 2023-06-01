#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to place many beepers in a straight line.
class BeeperSweeper < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def beep_move
      put_beeper
      move
    end

    def sweep_five
      beep_move
      beep_move
      beep_move
      beep_move
      beep_move
    end
  
 def run_task
    sweep_five
  end




end
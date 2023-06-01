#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to place many beepers in a straight line.
class TreeSweep < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def tree_beep
      put_beeper
      turn_right
      move
    end

    def tree_beep2
      put_beeper
      turn_left
      move
      put_beeper
      turn_left
      turn_left
      move
      turn_left
      move
    end 


    def tree_beep3
      put_beeper
      turn_left
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
      turn_left
      turn_left
      move
      move
      move
      move
      move
      turn_left
      move
    end 
    
    def tree_beep4
      put_beeper
      turn_left
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
       move
      put_beeper
      turn_left
      turn_left
      move
      move
      move
      move
      move
      move
      move
      turn_left
      turn_left
      put_beeper
      move
      turn_right
      move
    end 

    def the_tree
      tree_beep
      tree_beep2
      tree_beep3
      tree_beep4
      tree_beep3
      tree_beep2
      tree_beep
    end
  
 def run_task
    the_tree
  end




end
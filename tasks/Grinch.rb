#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to place many beepers in a straight line.
class UglyAssGreenGuy < UrRobot
  include Turner
  def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
  end

    def breaking_enteriing
      turn_right
      move
      move
      turn_right
      move
      move
      turn_right
      move
      turn_left
      move
      move
      turn_right
      move
      pick_beeper
      pick_beeper
      turn_left
      turn_left
      move
      pick_beeper
      pick_beeper
      turn_left
      move
      move
      turn_right
      move
      turn_left
      move
      move
      turn_right
      move
      turn_left

    end

    def night_woovill
      breaking_enteriing
      breaking_enteriing
      breaking_enteriing
      turn_left
      move
      move
      move
      move
      move
      move
      move
      move
      move
      move
      turn_left
      move
      move
      move
      move
      move
      move
      turn_left
      move
      turn_left
      breaking_enteriing
      breaking_enteriing
      breaking_enteriing
      turn_right
      turn_right
      move
      move
      move
      turn_left
      move
      turn_right
      move
      move
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper
      put_beeper      
      put_beeper
      put_beeper
      put_beeper
      put_beeper
    end
  
 def run_task
    night_woovill
  end




end
module ToyRobot
  class Command
    def self.process(command)
      #----- PLACE X,Y,F ----- FORMAT:
      #\A -> Match Beginning of string
      #(?<x>\d+) -> Value of x can be a digit of 1 or more characters
      #(?<y>\d+) -> Value of y can be a digit of 1 or more characters
      #(?<direction>\w+) -> Value of direction can be any 1(+) word character
      #\Z/ -> End of string (with or without /n)
      #-----------------------------------------
      # if match = /\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/.match(command)
      #   [:place, match[:x].to_i, match[:y].to_i, match[:direction]]
      # else
      #   [:invalid, command]
      # end

      case command
      when /\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/
        [:place, $~[:x].to_i, $~[:y].to_i, $~[:direction]]
      when /\AMOVE\Z/
        [:move]
      when /\ARIGHT\Z/
        [:turn_right]
      when /\ALEFT\Z/
        [:turn_left]
      when /\AREPORT\Z/
        [:report]
      else
        [:invalid, command]
      end
    end # def self.process(command)
  end # class Command
end # module ToyRobot

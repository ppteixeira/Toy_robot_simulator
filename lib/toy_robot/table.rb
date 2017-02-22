module ToyRobot
  class Table
    def initialize(width, length)
      @width = width
      @length = length
    end

    def valid_location?(east, north)
      #_______First Implementation _______
      # east >= 0 && east < @width &&
      # north >= 0 && north < @length

      #______Second Implementation _______
      (0...@width).cover?(east) &&
      (0...@length).cover?(north)
    end
  end #class Table
end #module ToyRobot

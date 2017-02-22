require "spec_helper"

describe ToyRobot::Command do
  context "PLACE" do
    it "processes a PLACE command" do
      command, *args = ToyRobot::Command.process("PLACE 1,2,NORTH")
      expect(command).to eq(:place)
      expect(args).to eq([1, 2, "NORTH"])
    end

    it "returns :invalid for an invalid PLACE command" do
      command = ToyRobot::Command.process("PLACE 1, 2, NORTH")
      expect(command).to eq([:invalid, "PLACE 1, 2, NORTH"])
    end
  end

  context "MOVE" do
    it "processes the command" do
      command, *args = ToyRobot::Command.process("MOVE")
      expect(command).to eq(:move)
      expect(args).to be_empty
    end
  end

  context "RIGHT" do
    it "turns robot 90 degrees clock wise" do
      command, *args = ToyRobot::Command.process("RIGHT")
      expect(command).to eq(:turn_right)
      expect(args).to be_empty
    end
  end

  context "LEFT" do
    it "turns robot 90 degrees anti-clock wise" do
      command, *args = ToyRobot::Command.process("LEFT")
      expect(command).to eq(:turn_left)
      expect(args).to be_empty
    end
  end

  context "REPORT" do
    it "gives a report" do
      command, *args = ToyRobot::Command.process("REPORT")
      expect(command).to eq(:report)
      expect(args).to be_empty
    end
  end
end #describe ToyRobot::Command

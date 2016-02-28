require "./board.rb"
require "./robot.rb"
require "./parser.rb"

class RobotSimulator

  def initialize
    @parser = Parser.new;
    @robot = Robot.new(Board.new(5, 5));
  end

  def play
    text=File.open('/home/alkaplan/pre-ruby-course/robotGame.txt').read
    text.gsub!(/\r\n?/, "\n")
    text.each_line do |line|
      commands = @parser.parse(line)
      @robot.send(*commands)
    end
  end

end
RobotSimulator.new.play

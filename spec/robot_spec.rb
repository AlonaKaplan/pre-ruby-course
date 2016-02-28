require "./robot.rb"
require "./board.rb"

describe 'Implements a simulatiion of a robot on a square tabletop' do
  let(:robot) { Robot.new(Board.new(5, 5)) }

  it 'should report the position of the robot on the tabletop' do
    robot.place(1, 2, :north)
    expect(robot.report).to eq([1, 2, :north])
  end

  it 'should place the robot in the received position on the tabletop' do
    robot.place(1, 2, :north)
    expect(robot.report).to eq([1, 2, :north])
  end

  it 'moves the robot one unit forward in the faced direction' do
    robot.place(0, 0, :north)
    robot.move
    expect(robot.report).to eq([0, 1, :north])
  end

  it 'rotates the robot 90 degrees to the right' do
    robot.place(0, 0, :north)
    robot.right
    expect(robot.report).to eq([0, 0, :east])
  end

  it 'rotates the robot 90 degrees to the left' do
    robot.place(0, 0, :north)
    robot.left
    expect(robot.report).to eq([0, 0, :west])
  end

  it 'plays demo game- PLACE 0, 0 , NORTH -> MOVE ->REPORT' do
    robot.place(0, 0, :north)
    robot.move
    expect(robot.report).to eq([0, 1, :north])
  end

  it 'plays demo game- PLACE 0, 0 , NORTH -> LEFT ->REPORT' do
    robot.place(0, 0, :north)
    robot.left
    expect(robot.report).to eq([0, 0, :west])
  end

  it 'plays demo game- PLACE 1, 2 , EAST -> MOVE -> MOVE -> LEFT -> MOVE ->REPORT' do
    robot.place(1, 2, :east)
    robot.move
    robot.move
    robot.left
    robot.move
    expect(robot.report).to eq([3, 3, :north])
  end
end
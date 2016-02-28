require "./board.rb"

describe 'Simulates a square tabletop' do

  it 'returns the position is valid for a position inside the dimentions' do
    board = Board.new(5, 5)
    expect( board.valid?(1, 2)).to eq(true)
  end

  it 'returns the position is invalid for a position outside the x dimention' do
    board = Board.new(5, 5)
    expect( board.valid?(6, 2)).to eq(false)
  end


  it 'returns the position is invalid for a position outside the y dimention' do
    board = Board.new(5, 5)
    expect( board.valid?(2, 5)).to eq(false)
  end

  it 'returns the position is invalid for a negative x position' do
    board = Board.new(5, 5)
    expect( board.valid?(-2, 3)).to eq(false)
  end

  it 'returns the position is invalid for a negative y position' do
    board = Board.new(5, 5)
    expect( board.valid?(2, -3)).to eq(false)
  end

end
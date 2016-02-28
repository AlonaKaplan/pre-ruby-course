require "./parser.rb"

describe 'Parses robot instructions' do
  let(:parser){Parser.new}

  it 'Parse place' do
    expect(parser.parse('PLACE 0,0,NORTH')).to eq(["place", "0", "0", "north"])
  end

  it 'Parse move' do
    expect(parser.parse('MOVE')).to eq(["move"])
  end

  it 'Parse left' do
    expect(parser.parse('LEFT')).to eq(["left"])
  end

  it 'Parse right' do
    expect(parser.parse('RIGHT')).to eq(["right"])
  end

  it 'Parse report' do
    expect(parser.parse('REPORT')).to eq(["report"])
  end
end
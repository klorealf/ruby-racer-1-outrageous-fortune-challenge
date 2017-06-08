require_relative "../die"

describe "rolling a die" do
  it "returns a number from one to 6" do
    expect((1..6)).to cover die_roll
  end

  it "can adjust the minimum and maximum roll to be lower" do
    min, max = -1, 0
    expect(min..max_roll).to cover die_roll(min, max)
  end

  it "can adjust the minimum and maximum roll to be higher" do
    min, max = 7, 8
    expect(min..max_roll).to cover die_roll(min, max)
  end
end

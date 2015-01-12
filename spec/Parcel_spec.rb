require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do
    it("returns the product of length, width, and height") do
      test_parcel = Parcel.new()
      expect(test_parcel.volume(10, 15, 20)).to eq(3000)
    end
  end

  describe("#cost_to_ship") do
    it("returns a cost based on pricing formula") do
      test_parcel = Parcel.new()
      test_parcel.volume(10, 15, 20)
      expect(test_parcel.cost_to_ship(10)).to eq(30)
    end
  end
end

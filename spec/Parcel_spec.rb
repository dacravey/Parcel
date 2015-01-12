require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do
    it("returns the product of length, width, and height") do
      test_parcel = Parcel.new()
      expect(test_parcel.volume(10, 15, 20)).to eq(3000)
    end
  end
end

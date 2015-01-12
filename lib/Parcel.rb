class Parcel
  define_method(:initialize) do
    @volume
  end

  define_method(:volume) do |length, width, height|
    @volume = length.*(width.*(height))
  end

  define_method(:cost_to_ship) do |weight|
    volume_range = { (12..125) => 1, (126..1000) => 2, (1001..5000) => 3, (5001..25000) => 4,(25001..1000000) => 5 }
    tier = volume_range.select {|tier| tier === @volume }.values.first
    formula = tier.*(weight)
    formula
  end
end

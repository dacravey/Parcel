class Parcel
  define_method(:initialize) do
  end

  define_method(:volume) do |length, width, height|
    volume = length.*(width.*(height))
  end
end

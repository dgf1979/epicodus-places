class Places

  @@all_locations = []

  define_method(:initialize) do |location_name|
    @location_name = location_name
  end

  define_method(:location) do
    @location_name
  end

  define_method(:save_location) do
    @@all_locations.push(self)
  end

  define_singleton_method(:all) do
    @@all_locations
  end
end

class Places

  @@all_locations = []

  define_method(:initialize) do |location_name|
    @location_name = location_name
  end

  define_method(:location) do
    @location_name
  end

  define_method(:save) do
    if self.location != ""
      @@all_locations.push(self)
    end
  end

  define_singleton_method(:all) do
    @@all_locations
  end

  define_singleton_method(:clear) do
    @@all_locations = []
  end
end

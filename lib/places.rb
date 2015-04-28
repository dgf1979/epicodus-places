class Places

  define_method(:initialize) do |location_name|
    @location_name = location_name
  end

  define_method(:location) do
    @location_name
  end

  define_method(:save_location) do

  end

  define_singleton_method(:all) do

  end
end

require('rspec')
require('places')

describe(Places) do
  describe('#location') do
    it("set the name of a location") do
      new_place = Places.new("Los Angeles")
      expect(new_place.location()).to(eq("Los Angeles"))
    end

  end

end

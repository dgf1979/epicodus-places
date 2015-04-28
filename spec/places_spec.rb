require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end
  
  describe('#location') do
    it("set the name of a location") do
      new_place = Places.new("Los Angeles")
      expect(new_place.location()).to(eq("Los Angeles"))
    end
  end

  describe('#save') do
    it('will save the location to a list of places') do
      new_place = Places.new("Glasgow, Scotland")
      new_place.save()
      expect(Places.all()).to(eq([new_place]))
    end
  end

  describe('.clear') do
    it('clear the locations list') do
      new_place = Places.new("Glasgow, Scotland")
      new_place.save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end

end

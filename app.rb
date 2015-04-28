require('pry')
require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/') do

  location_description = params.fetch('location')
  location = Places.new(location_description)
  location.save()
  @places = Places.all() #[0].location()

  @html_list = "<ul>"
  @places.each do |place|
    @html_list += "<li>#{place.location()}</li>"
  end
  @html_list += "</ul>"
  params.clear()
  erb(:index)
end

get('/test') do
  erb(:test)
end

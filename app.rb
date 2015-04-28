require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post('/') do
  erb(:index)
end

get('/test') do
  erb(:test)
end

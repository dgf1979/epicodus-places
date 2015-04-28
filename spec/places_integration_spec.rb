require('pry')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path', {:type => :feature}) do
  it('test and verify basic routing of sinatra app') do
    visit('/test')
    expect(page).to have_content('test page')
  end

  it('verifies location entered into form is returned on page', {:type => :feature}) do
    visit('/')
    fill_in("location", :with => "Paris, France")
    click_button("Add Location")
    expect(page).to have_content('Paris, France')
  end

  it('verifies all locations entered into form are returned on page', {:type => :feature}) do
    visit('/')
    fill_in("location", :with => "Paris, France")
    click_button("Add Location")

    fill_in("location", :with => "London, England")
    click_button("Add Location")
    expect(page).to have_content('Paris, France')
    expect(page).to have_content('London, England')
  end

  # it('verifies that the user has not submitted a blank entry') do
  #
  # end

end

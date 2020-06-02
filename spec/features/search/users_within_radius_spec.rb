require 'rails_helper'

RSpec.describe 'Search Location', type: :feature do
  describe 'As a logged in user when I visit the search page' do
    it 'I can see other users within my area' do
      myself = create(:user, username: 'kevin_m', zip: '80222')
      user1 = create(:user, zip: 80210)
      user2 = create(:user, zip: 80222)
      user3 = create(:user, zip: 90001)
      allow_any_instance_of(ApplicationController).to receive(:current_user)
                                                  .and_return(myself)
      json_zips_resp = File.read('spec/fixtures/redline_zip/zips_in_area.json')
      stub_request(:get, "https://redline-redline-zipcode.p.rapidapi.com/rest/radius.json/80222/5/mile")
                  .to_return(status: 200, body: json_zips_resp, headers: {})

      visit '/users/search'

      expect(page).to have_content('Musicians in My Area')

      within '#users-in-area' do
        expect(page).to have_content(user1.username)
        expect(page).to have_content(user2.username)
        expect(page).not_to have_content(user3.username)
        expect(page).not_to have_content(myself.username)
      end

    end
  end
end

#     As a registered user,
# when I visit the search page,
# I want to search for users in my geographic area
# so that I can collaborate with them on scores.
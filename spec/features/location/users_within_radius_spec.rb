require 'rails_helper'

RSpec.describe 'Location', type: :feature do
  describe 'As a logged in user when I visit the search page' do
    it 'I can see other users within my area' do
      myself = create(:user, username: 'kevin_m', zipcode: '80222')
      user1 = create(:user, zipcode: 80210)
      user2 = create(:user, zipcode: 80222)
      user3 = create(:user, zipcode: 90001)
binding.pry


    end
  end
end



#     As a registered user,
# when I visit the search page,
# I want to search for users in my geographic area
# so that I can collaborate with them on scores.
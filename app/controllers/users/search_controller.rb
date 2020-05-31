class Users::SearchController < ApplicationController

    def index
      @area_users = SearchService.find_zips(current_user.zipcode)
    end

end
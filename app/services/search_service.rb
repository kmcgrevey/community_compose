class SearchService
  class << self

    def find_zips(my_zipcode)
      resp = conn.get("/rest/radius.json/#{my_zipcode}/5/mile")
      json = get_json(resp)
      zip_list = json[:zip_codes].map { |zip| zip[:zip_code] }
      User.others_near_me(zip_list)
    end
    
    private
    
    def conn
      Faraday.new('https://redline-redline-zipcode.p.rapidapi.com') do |f|
        f.headers['X-RapidAPI-Host'] = "redline-redline-zipcode.p.rapidapi.com"
        f.headers['X-RapidAPI-Key'] = ENV['REDLINE_ZIP_API_KEY']
      end
    end

    def get_json(resp)
      JSON.parse(resp.body, symbolize_names: true)
    end
    
    
  end
end
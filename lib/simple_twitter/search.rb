module SimpleTwitter

  class Search

    SEARCH_URL = "http://search.twitter.com/search.json"


    attr_accessor(:results_per_page, :lang)


    def initialize
      @results_per_page = 10
      @lang = "en"
    end


    def search (query)
      params = {
        :q => query,
        :rpp => @results_per_page,
        :lang => @lang
      }


      response = HTTParty.get(SEARCH_URL, :query => params)
      JSON.parse(response.body)
    end
  end
end

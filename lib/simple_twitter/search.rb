module SimpleTwitter

  class Search

    TWITTER_SEARCH = "http://search.twitter.com/search.json"


    attr_accessor(:results_per_page)
    

    def initialize
      @results_per_page = 10
    end


    def search (query)
      params = {
        :q => query,
        :rpp => @results_per_page,
      }
      
      
      response = HTTParty.get(TWITTER_SEARCH :query => params)
      JSON.parse(repsonse.body)
    end
  end
end

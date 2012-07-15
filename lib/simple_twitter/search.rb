module SimpleTwitter

  class Search

    SEARCH_URL = "http://search.twitter.com/search.json"


    attr_accessor(:results_per_page, :lang)


    def initialize
      @results_per_page = 10
      @lang = "en"
    end

    ############################################################################
    # Returns a Hash from Twitter's search results JSON.
    def search (search_term)
      params = {
        :q   => search_term,
        :rpp => @results_per_page,
        :lang => @lang
      }

      response = HTTParty.get(SEARCH_URL, :query => params)
      nasty_hash = JSON.parse(response.body)
      nasty_hash['results'].map {|r| Tweet.new(r)}


    end
  end
end

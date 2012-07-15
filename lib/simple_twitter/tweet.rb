module SimpleTwitter

  class Tweet

    attr_accessor(:text, :user, :time, :avatar)

    def initialize (tweet_hash)
      @text   = tweet_hash['text']
      @user   = tweet_hash['from_user']
      @time   = tweet_hash['created_at']
      @avatar = tweet_hash['profile_image_url']
    end
  end
end

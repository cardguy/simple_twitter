################################################################################
require('test/unit')
require('simple_twitter')

################################################################################
class TweetTest < Test::Unit::TestCase

  ##############################################################################
  def test_hash_turns_into_accessors
    data  = {
      'text'            => 'Almost anything',
      'from_user'       => 'super_coder',
      'created_when'    => 'NOW!',
      'profile_image_url'   => 'http://example.com'
  }



    tweet = SimpleTwitter::Tweet.new(data)
      assert_equal(data['text'], tweet.text)
      assert_equal(data['from_user'], tweet.user)
      assert_equal(data['created_when'], tweet.time)
      assert_equal(data['profile_image_url'], tweet.profile_image_url)

  end
end


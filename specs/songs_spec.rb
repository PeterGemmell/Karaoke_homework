require('minitest/autorun')
require('minitest/reporters')
require_relative('../songs.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSongs < MiniTest::Test

  def setup

    # Songs created.
    @song1 = Songs.new("You Got The Love, Candi Staton")
    @song2 = Songs.new("Rolling in the Deep, Adele")
    @song3 = Songs.new("Thunderstruck, AC/DC")
end

 # Test to return song 1.
def test_dance_song
  assert_equal("You Got The Love, Candi Staton", @song1.return_dance_song)
end




end

require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

def setup
    @song = Song.new("Call Tickertron", "Run the Jewels")
end

def test_check_song_name()
  assert_equal("Call Tickertron", @song.song_name)
end


end

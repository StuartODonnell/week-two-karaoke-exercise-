require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
# require_relative("../guest.rb")
# require_relative("../song.rb")

class TestRoom < MiniTest::Test

def setup
@room = Room.new("The Jockey Wilson Suite")
end

def test_check_room_name()
  assert_equal("The Jockey Wilson Suite", @room.room_name)
end













end

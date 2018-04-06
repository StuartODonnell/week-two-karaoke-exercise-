require("minitest/autorun")
require("minitest/rg")
# require_relative("../room.rb")
require_relative("../guest.rb")
# require_relative("../song.rb")

class TestGuest < MiniTest::Test

def setup
@guest = Guest.new("Jeor Mormont")
end

def test_check_guest_name()
  assert_equal("Jeor Mormont", @guest.guest_name)
end

end

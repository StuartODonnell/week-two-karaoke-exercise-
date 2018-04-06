require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")

class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new("Waymar Royce")
    @guest2 = Guest.new("Lady Stoneheart")
    @guest3 = Guest.new("Coldhands")
    @guest4 = Guest.new("Howland Reed")
    @song1 = Song.new("Stormzy", "Big For your Boots")
    @song2 = Song.new("Stevie Wonder", "Sir Duke")
    @song3 = Song.new("Alt-J", "Tessellate")
    songs = [@song1, @song2, @song3]
    @room1 = Room.new("The Jockey Wilson Suite")
  end

  def test_check_room_name()
    assert_equal("The Jockey Wilson Suite", @room1.room_name)
  end

  # def test_room_has_guests()
  # assert_equal("Lady Stoneheart", @guest2.add_guest_to_room)
  # end

  # def test_pub_has_till
  #     assert_equal(100.0, @pub.till())
  #   end


  def test_check_guest_into_room
    assert_equal(1, @room1.check_in_guest(@guest1).count)
    # @room1.check_in_guest(@guest1)
    # assert_equal([@guest1], @room1.guests)
  end

  def test_check_guest_out_of_room
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    @room1.check_out_guest(@guest3)
    assert_equal(2, @room1.guests_in_room())
  end

  def test_guests_in_room
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guests_in_room())
  end

def test_add_songs_to_room
  assert_equal(1, @room1.add_songs_to_room(@song1).count)
end

  end

class Room

  attr_reader :room_name, :guests, :songs
  # attr_writer
  #attr_accessor


  def initialize(room_name)
    @room_name = room_name
    @guests = []
    @songs = []
  end

  def check_in_guest(guest)
    @guests.push(guest)
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def guests_in_room()
    @guests.length
  end

  def add_songs_to_room(song)
    @songs.push(song)
  end
end

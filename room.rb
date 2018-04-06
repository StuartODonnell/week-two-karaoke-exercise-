class Room

  attr_reader :room_name, :guests
  # attr_writer
  #attr_accessor


  def initialize(room_name)
    @room_name = room_name
    @guests = []
  end

  def check_in_guest(guest)
    @guests.push(guest)
  end

  # def check_out_guest(guest)
  #   @guests.delete()
  # end

  def guests_in_room()
    @guests.length
  end
end

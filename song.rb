class Song
  # attr_reader :holder_name, :balance, :type
  # attr_writer :holder_name, :balance, :type
  attr_accessor :song_name, :song_artist

  def initialize(song_name, song_artist)
    @song_name = song_name
    @song_artist = song_artist
  end


end

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artists_names = []
    i = 0
    self.songs[i].each do |i, artist|
      artists_names << self.songs[i].artist.name
      i+1
    end
    artists_names
  end
end

require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    output = {}
    @@genres.each do |item|
      if output.include?(item)
        output[item] += 1
      else
        output[item] = 1
      end
      # binding.pry
    end
    output
  end

  def self.artist_count
    output = {}
    @@artists.each do |item|
      if output.include?(item)
        output[item] += 1
      else
        output[item] = 1
      end
    end
    output
  end

end

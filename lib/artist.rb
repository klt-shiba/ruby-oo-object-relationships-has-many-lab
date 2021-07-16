class Artist
    
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        # Search songs through Song class. Search through all of them.
        Song.all.select do |song| 
            song.artist == self
        end
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song)
        song = Song.new(song)
        song.artist = self
    end

    def self.song_count
        Song.all.length
    end
end
class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def artist
      @artist
    end

    def artist_name
        if self.artist == nil
            return nil
        else 
            self.artist.name
        end
    end

end
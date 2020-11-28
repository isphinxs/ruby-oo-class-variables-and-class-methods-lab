class Song
    @@count = 0
    @@genres = []
    @@artists = []
    
    attr_accessor :name, :artist, :genre
   
    def initialize(name, artist, genre)
        @@count += 1
        @@genres << genre
        @@artists << artist
        self.name = name
        self.artist = artist
        self.genre = genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.inject({}) do |result, genre|
            if result[genre]
                result[genre] += 1
            else 
                result[genre] = 1
            end
            result
        end
    end

    def self.artist_count
        @@artists.inject({}) do |result, artist|
            if result[artist]
                result[artist] += 1
            else
                result[artist] = 1
            end
            result
        end
    end

end
class Song 

    attr_accessor :artist, :genre
    attr_reader :name

@@count = 0
@@genres = []
@@artists = []

    def initialize(name, artist, genre)
        @name = name,
        @artist = artist,
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist 

    end

    def self.artists()
        (@@artists.uniq)

    end
    # class method
    def self.count()
        @@count 
    end

    def self.genres
        @@genres.uniq 
    end

    def self.genre_count()
        hash = {}
        @@genres.each do |item|
            if hash[item]
                hash[item] += 1
            else 
                hash[item] = 1
            end
            

        end
        hash
    end

    def self.artist_count()
        hash = {}
        @@artists.each do |item|
            if hash[item]
                hash[item] += 1
            else 
                hash[item] = 1
            end
            

        end
        hash
    end


end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
Song.new('Rising Hope', 'LiSA', 'J-pop')
Song.new('Run', 'BTS', 'K-pop')
Song.new('Ponzona', "Purple Kiss", 'K-pop')
(Song.new("", "Naz ", "edm"))
(Song.new("", "Naz ", "edm"))
# p(Song.genres)
p(Song.genre_count)

# ['rap', 'J-pop', 'K-pop', 'K-pop']
# {"rap" => 1, "J-pop" => 1, "K-pop" => 2, " " => 2}


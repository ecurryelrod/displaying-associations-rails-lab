class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        self.songs.count
    end
    
    def destroy_songs
        self.songs.each do |song|
            song.destroy
        end
    end
end

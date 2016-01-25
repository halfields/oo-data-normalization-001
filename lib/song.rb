class Song
  # code goes here

  attr_accessor :artist

  def title=(name)
    @title = name
  end

  def title
    @title
  end

  def slugify
    normed_song = self.title.downcase.gsub(" ", "_")
    file = Tempfile.new([normed_song, ".txt"], "tmp")
    file.open
    file.write("#{self.artist.name} - #{self.title}")
    file.close
  end
end

class Library
 
  attr_reader :name,
              :books,
              :authors
  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @books << author.books
    @authors << author
    @authors.last
  end

  def publication_time_frame(author)
    time_frame_hash = {start: "first", end: "last"}
    time_frame = []
    author.books.each do |book|
      time_frame << book.publication_date.to_i
    end
    time_frame_hash[:end] = time_frame.max
    time_frame_hash[:start] = time_frame.min
    time_frame_hash
  end
end

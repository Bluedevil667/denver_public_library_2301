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
    time_frame_hash[:end] = author.books[1].publication_date
    time_frame_hash[:start] = author.books[0].publication_date 
    time_frame_hash
  end
end

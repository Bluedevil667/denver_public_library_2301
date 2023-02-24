class Author
  attr_reader :first_name,
              :last_name,
              :books
  def initialize(characteristics)
    @first_name = characteristics[:first_name]
    @last_name = characteristics[:last_name]
    @books = []
  end

  def write(title, date)
    book_hash = {title: title, publication_date: date}
    @books << Book.new(book_hash)
    @books.last
  end
end

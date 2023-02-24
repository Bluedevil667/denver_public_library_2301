class Book
  attr_reader :author_first_name,
              :author_last_name,
              :title,
              :publication_date
  def initialize(book_atributes)
    @author_first_name = book_atributes[:author_first_name]
    @author_last_name = book_atributes[:author_last_name]
    @title = book_atributes[:title]
    @publication_date = book_atributes[:publication_date]
  end
end

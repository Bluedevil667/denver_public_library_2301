class Author
  attr_reader :first_name,
              :last_name,
              :books
  def initialize(characteristics)
    @first_name = characteristics[:first_name]
    @last_name = characteristics[:last_name]
    @books = []
  end
end

require 'spec_helper'
RSpec.describe Library do
  it 'exists' do
    library = Library.new("Denver Library")
    expect(library).to be_an_instance_of Library
  end

  it 'has atributes' do
    library = Library.new("Denver Library")
    expect(library.name).to eq("Denver Library")
    expect(library.books).to eq([])
    expect(library.authors).to eq([])
  end

  it 'can store authors' do
    library = Library.new("Denver Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    expect(library.add_author(charlotte_bronte)).to eq(charlotte_bronte)
  end

  it 'can add books by author when author is added' do
    library = Library.new("Denver Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "1847")
    villette = charlotte_bronte.write("Villette", "1853")
    library.add_author(charlotte_bronte)
    expect(library.books).to eq([[jane_eyre,villette]])
  end

  it 'can have first and last book shown for an author' do
    library = Library.new("Denver Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "1847")
    villette = charlotte_bronte.write("Villette", "1853")
    library.add_author(charlotte_bronte)
    expect(library.publication_time_frame(charlotte_bronte)).to eq({:start=>1847, :end=>1853})
  end
end